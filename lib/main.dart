import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridPage(),
    );
  }
}

class GridPage extends StatelessWidget {
  GridPage({Key? key}) : super(key: key);

  // images we will use in our grid
  final _items = [
    "https://images.unsplash.com/photo-1679087624010-4bd878cc8fde?w=640&q=80",
    "https://images.unsplash.com/photo-1677624938289-216d62d247ca?w=640&q=80",
    "https://images.unsplash.com/photo-1677624937477-172a9347d363?w=640&q=80",
    "https://images.unsplash.com/photo-1677624971129-9853159858ba?w=640&q=80",
    "https://images.unsplash.com/photo-1677624937447-7557b1f38e99?w=640&q=80",
    "https://images.unsplash.com/photo-1667588245924-bb221f7eac74?w=640&q=80",
    "https://images.unsplash.com/photo-1665600068145-4682cee8ffc2?w=640&q=80",
    "https://images.unsplash.com/photo-1665600081467-2fbf0a5e0017?w=640&q=80",
    "https://images.unsplash.com/photo-1665600106044-52e60cb2e405?w=640&q=80",
    "https://images.unsplash.com/photo-1665600086689-ebf52103a29a?w=640&q=80",
    "https://images.unsplash.com/photo-1665600073128-3f790dc277be?w=640&q=80",
    "https://images.unsplash.com/photo-1665600063451-6efd7a732dbe?w=640&q=80",
    "https://images.unsplash.com/photo-1663800408816-4679ed3dffae?w=640&q=80",
    "https://images.unsplash.com/photo-1663800407519-93ed080f9346?w=640&q=80",
    "https://images.unsplash.com/photo-1661451629261-556341848d1a?w=640&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            // define click listener
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(),
                ),
              );
            },
            // define image style
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_items[index]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: const Center(
        child: Text('Detail'),
      ),
    );
  }
}
