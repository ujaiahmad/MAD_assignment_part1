//Ahmad Huzaifi Bin Ahmad Azahri 1918091 Section1
import 'package:flutter/material.dart';
import 'bottombar.dart';
import 'card.dart';
import 'top_bar.dart';

void main() {
  runApp(const IoTHome());
}

class IoTHome extends StatelessWidget {
  const IoTHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IoT Home'),
      ),
      bottomNavigationBar: const CustomBottomBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [CustomTopBar()],
          ),
          Wrap(alignment: WrapAlignment.spaceEvenly, children: [
            CustomCard(
              picture: "lib/assets/living-room-off.png",
              description: "Lamp",
            ),
            CustomCard(
                picture: "lib/assets/dining-table-off.png",
                description: "Dining Table"),
            CustomCard(
                picture: "lib/assets/parking-area-off.png",
                description: "Parking Area"),
            CustomCard(
                picture: "lib/assets/socket-off.png",
                description: "Living Room Socket"),
            CustomCard(
                picture: "lib/assets/gate-off.png", description: "Front Gate"),
          ])
        ],
      ),
    );
  }
}
