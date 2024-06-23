import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text('Flutter is fun!'),
            ),
            
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),

            body: Center(
              child: Text(
                'You have pushed the button $count many times:',
                style: TextStyle(fontSize: 60, color: randomColor())
              )
            )
        )
        );
    
  }
}


randomColor() {
  return Color.fromARGB(
      255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
}
