// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:qmanagement/controller/controller.dart';
import 'package:qmanagement/screen/doubleCall.dart';
import 'package:qmanagement/screen/endtoendvide.dart';
import 'package:qmanagement/screen/homepage.dart';
import 'package:qmanagement/screen/hospitalDisplay.dart';
import 'package:qmanagement/screen/periodic_call.dart';
import 'package:qmanagement/screen/qHospitalYutube.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

Future<void> main() async {
  // final customNotifier = CustomNotifier();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Controller()),
      ],
      child: MyApp(),
    ));
  });
  // runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HospitalScreen(),
    );
  }
}

// class Base extends StatefulWidget {
//   const Base({Key? key}) : super(key: key);

//   @override
//   State<Base> createState() => _BaseState();
// }

// class _BaseState extends State<Base> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebView(
//           javascriptMode: JavascriptMode.unrestricted,
//           initialUrl:
//               "https://www.jqueryscript.net/demo/Lightweight-jQuery-Based-Text-To-Speech-Engine-Articulate-js/",
//         ),
//       ),
//     );
//   }
// }
