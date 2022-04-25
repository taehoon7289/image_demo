import 'package:flutter/material.dart';

void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '이미지 데모야',
      home: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  MyList({Key? key}) : super(key: key);

  final List<String> images = [
    '0ad2e56c-1eae-4048-9c48-18356ad4cea8.jpg',
    '0b05dd64-d82f-4950-9e65-ccd23e6eaf98.jpg',
    '0b604db8-bcbb-4aa0-90f5-ca9eaec3cd93.jpg',
    '0c9ebec8-20bf-4b72-9042-00770308b7a2.jpg',
    '0f8e3d9f-9112-4b57-86bf-a4622f96eeec.jpg',
    '0fd6b786-22da-4ae3-b1f1-eb2b7b330a7e.jpg',
    '1af6b6cc-4414-4281-8657-09b9b529ba50.png',
    '1ed9175b-33cc-4287-8b07-f7f4d4480916.png',
    '1f7a25a4-89a8-4660-8444-92de681066c3.jpg',
    '1f399f1f-be5c-4760-9c11-923978bde7a6.jpg',
    '1ff8bad5-6455-40f0-a7ac-2a3bbabeddae.jpg',
    '2c9db412-5bf2-46bf-9dcd-0e1e104c80ff.jpg',
    '2ce280df-a9b8-492a-823b-2510321de0e8.jpg',
    '2dbde7c1-b8ba-4978-af1e-549acd528dc0.jpg',
    '2f897c30-6270-453b-a324-1f8e8412a5ad.jpg',
    '3a0da6a2-a3d2-4a5d-818f-a06371804902.jpg',
    '3ab262a7-b6be-4064-aa90-1d57b3b5e4a6.jpg',
    '3c81725f-c5e3-44e0-a318-83aaa0680670.jpg',
    '3db151b4-ecb4-4b55-a8c3-dad16e4e9168.JPG',
    '3f64e1fd-1e49-48c8-bebb-affe531686a7.jpg',
    '4a1d590f-fb76-434a-83be-51a5a134697c.jpg',
    '4a761189-9a1e-4115-8151-89743b223f2a.jpg',
    '4af34185-7783-403b-bb58-1060a86f92cb.png',
    '4b417c0e-ea4b-4d04-8fc8-76a5b2df89ed.jpg',
    '4d1be15b-e5c5-457a-ba19-a56daa5a1081.jpg',
    '4e9b51bc-4353-4d90-964c-1aa1b1cb3ce4.jpg',
    '4f03e93c-2d2d-4edc-966c-988243ffccbd.jpg',
    '5a93a296-9cc1-45cf-b0d5-e7dd743c43d6.jpg',
    '5c468407-ffa6-4342-a1f2-ecfd0559dc90.jpg',
    '5cd00607-17dd-44ef-be20-0aa075398785.jpg',
    '5cf9ea36-a484-4a3f-be6d-1a18b1696e47.jpg',
    '5dfd4ba6-834c-4e1f-974d-1924e7cc0544.jpg',
    '5e75e6f5-20de-4400-bc63-ec8fa8ac675e.jpg',
    '5f6aec5b-98df-48e3-8bb5-d2496df9155b.jpg',
    '5ff49b9c-8ff2-43c1-83f3-f5466bb4308c.jpg',
    '6a5fadf6-953b-4124-b29f-55faa49292b1.jpg',
    '6a60e1a2-71dc-4dd9-b731-d78c5382b443.jpg',
    '6a707b43-7970-45f8-b80c-6675c606d422.jpg',
    '6a951e76-0508-4b2c-a29d-ab61655dca34.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> _images = [];
    for (int i = 0; i < 10000; i++) {
      _images.addAll(images);
    }
    print(_images);
    return Scaffold(
      appBar: AppBar(title: Text('앱바 타이틀@@!!')),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 80,
              color: Colors.pink[200],
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: Text('$index', style: TextStyle(fontSize: 20)),
                  ),
                  Image.asset('assets/images/${_images[index]}'),
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    child: Text(_images[index],
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ))
                ],
              ));
        },
      ),
    );
  }
}
