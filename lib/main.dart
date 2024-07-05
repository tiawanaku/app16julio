import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recorrido Entrada Virgen del Carmen 2024'),
        ),
        body: WebView(
          initialUrl: 'https://www.google.com/maps/d/embed?mid=18CcrNzdg_iSppXryttHWf1jl5UaWnTA&ehbc=2E312F',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
