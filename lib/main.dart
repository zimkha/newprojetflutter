import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newprojetflutter/projet_page.dart';

const d_green = Color(0xFF54D3C2);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
   const MyApp({Key? key }): super(key: key);
   
   static const appTitle = 'Sama keur';

  @override
  Widget build (BuildContext context) {
     return const MaterialApp(
      title: appTitle,
      home: Home(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget{
  final String title;
  const Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
         title: Text(title),
         backgroundColor: Colors.white,
          iconTheme: IconThemeData(
          color: Colors.grey
          ),
         ),
       
       body: SingleChildScrollView(
        child: Column(
           children: [
             SearchSection(),
             ProductSection()
         ],
        ),
       ),
       drawer: Drawer(
          
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             const DrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.blueAccent  
               ), child: Text('Samakeur'),
             ),
             ListTile(
               title: const Text('Profile'),
               onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                       return ProjetPage();
                    }
                  ));
               },
             ),
              ListTile(
               title: const Text('Projets'),
               onTap: () {
                  Navigator.pop(context);
               },
             ),
              ListTile(
               title: const Text('Demandes'),
               onTap: () {
                  Navigator.pop(context);
               },
             ),
           ],
         ),
       ),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({ Key ? key}) : super(key: key);


  @override 
  Widget build(BuildContext context) {
    return Container(
     height: 200,
     color: Colors.grey[100],
     padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
     child: Column(
       children: [
         Row(
           children: [
             Expanded(
               child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                       hintText: 'Recherche par localité',
                       contentPadding: EdgeInsets.all(10)
                      ),
                  ),
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                   boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0,4)
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(25)
                      ),
                ),
                child: ElevatedButton(
                  onPressed: (){},
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: d_green,
                  )
                ),
              ),
            
           ], 
         ),
         SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose date',
                  style: GoogleFonts.nunito(
                     color: Colors.grey,
                     fontSize: 15
                   )),
                  Text('2021-11-05',
                  style: GoogleFonts.nunito(
                     color: Colors.black,
                     fontSize: 17
                   )),
                ],

              ),
            ),
           
             Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose date',
                   style: GoogleFonts.nunito(
                     color: Colors.grey,
                     fontSize: 15
                   )
                  ),
                  Text('2021-11-05',
                  style: GoogleFonts.nunito(
                     color: Colors.black,
                     fontSize: 17
                   )),
                ],

              ),
            )
          ],
          )
       ],
     ),
    );
  }
}

class ProductSection extends StatelessWidget {
  final List myListe = [
    {
       'title' : 'Maison a Keur Massar',
       'space': '200km2',
       'adress': 'Keur Massar',
       'proprio': 'Khazim Ndiaye',
       'picture': 'images/terrain_1.jpg',
       'price': '3000'
    },
     {
       'title' : 'Maison a Keur Massar',
       'space': '200km2',
       'adress': 'Keur Massar',
       'proprio': 'Khazim Ndiaye',
       'picture':'images/terrain_2.jpg',
        'price': '4000'
    },
     {
       'title' : 'Maison a Keur Massar',
       'space': '200km2',
       'adress': 'Keur Massar',
       'proprio': 'Khazim Ndiaye',
       'picture': 'images/terrain_1.jpg',
        'price': '5000'
    },
     {
       'title' : 'Maison a Keur Massar',
       'space': '200km2',
       'adress': 'Keur Massar',
       'proprio': 'Khazim Ndiaye',
       'picture': 'images/terrain_2.jpg',
        'price': '2500'
    }
  ];
 // const ProductSection({Key ? key, required this.myListe}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('Home founds',
                    style: GoogleFonts.nunito(
                     color: Colors.black,
                     fontSize: 15
                   ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Filters',
                        style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15
                        ),
                      ),
                       IconButton(
                      onPressed: null , 
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: d_green,
                        size: 25
                    ),
                    )
                    ],
                  ),
                 
              ],
              ),
          ),
          Column(
            children: myListe.map((mz) {
              return MaisonCard(mz);
            }).toList(),
          )
        ],
      ),
      );
  }
}

class MaisonCard extends StatelessWidget {
 @override
 final Map maisonData;
 MaisonCard(this.maisonData);
 Widget build(BuildContext context) {
   return Container(
       margin: EdgeInsets.all(10),
       height: 230,
       width: double.infinity,

       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(
           Radius.circular(18)
         ),
         boxShadow: [
           BoxShadow(
             color: Colors.grey,
             spreadRadius: 4,
             blurRadius: 6,
             offset: Offset(0,3)
           ),
         ]
       ),
       
       child: Column(
         children: [
           Container(
             height: 140,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(18),
                 topRight: Radius.circular(18)
               ),
               image: DecorationImage(
                 image: AssetImage(maisonData['picture']),
                 fit: BoxFit.cover),
             ),
             child: Stack(
               children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: (){},
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      size: 15,
                      color: d_green,
                    ),
                  ),
                  ),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   maisonData['title'],
                   style: GoogleFonts.nunito(
                     fontSize: 17,
                     fontWeight: FontWeight.w800
                   ),
                   ),
                   Text(
                    '\$' + maisonData['price'],
                     style: GoogleFonts.nunito(
                        fontSize: 17,
                        fontWeight: FontWeight.w800
                      ),
                   ),
                  
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   maisonData['adress'],
                   style: GoogleFonts.nunito(
                     fontSize: 13,
                     color: Colors.grey[500],
                     fontWeight: FontWeight.w400
                   ),
                 ),
                 Row(
                   children: [
                     Icon(
                       Icons.place,
                       color: d_green,
                       size: 13,
                     ),
                     Text(
                       maisonData['space']
                       ),
                   ],
                 ),
                  Text(
                   'TTC',
                   style: GoogleFonts.nunito(
                     fontSize: 13,
                     fontWeight: FontWeight.w400,
                     color: Colors.grey.shade800
                   ),
                 ),
               ],
               
             ),
            
           ),
         ],
         ),

   );
 }
}

