import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      'title', 'new message',
                      snackPosition: SnackPosition.BOTTOM,
                      // below titleText and messageText replaces the text above and message given
                      // titleText: Text('another data'),
                      // messageText: Text('data')
                      // colorText changes the
                      colorText: Colors.blue,
                      backgroundColor: Colors.black,
                      // we can allign the bottom part a bit above by using margine
                      margin: EdgeInsets.only(bottom: 10, left: 10,right: 10),
                      borderRadius: 20

                    );
                  },
                  child: Text('hello'),
                ),
              ]),
        ),
      ),
    );
  }
}
