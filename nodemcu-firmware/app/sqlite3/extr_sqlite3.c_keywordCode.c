
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int charMap (char const) ;
 int testcase (int) ;
 char const toupper (char const) ;

__attribute__((used)) static int keywordCode(const char *z, int n, int *pType){
  static const char zText[372] = {
    'C','O','N','S','T','R','A','I','N','T','O','F','F','S','E','T','A','B',
    'L','E','F','T','H','E','N','D','E','S','C','A','P','E','L','S','E','L',
    'E','C','T','R','A','N','S','A','C','T','I','O','N','A','T','U','R','A',
    'L','L','I','K','E','Y','S','A','V','E','P','O','I','N','T','E','M','P',
    'O','R','A','R','Y','W','I','T','H','O','U','T','E','R','E','L','E','A',
    'S','E','X','C','L','U','S','I','V','E','X','I','S','T','S','B','E','G',
    'I','N','D','E','X','E','D','E','L','E','T','E','B','E','T','W','E','E',
    'N','O','T','N','U','L','L','I','M','I','T','C','A','S','E','C','O','L',
    'L','A','T','E','C','R','E','A','T','E','C','U','R','R','E','N','T','_',
    'D','A','T','E','G','R','O','U','P','D','A','T','E','I','G','N','O','R',
    'E','G','E','X','P','R','I','M','A','R','Y','I','M','M','E','D','I','A',
    'T','E','J','O','I','N','N','E','R','E','P','L','A','C','E','M','A','T',
    'C','H','E','C','K','V','A','L','U','E','S','W','H','E','N','W','H','E',
    'R','E','A','B','O','R','T','A','N','D','E','F','A','U','L','T','A','S',
    'C','O','M','M','I','T','C','O','N','F','L','I','C','T','C','R','O','S',
    'S','C','U','R','R','E','N','T','_','T','I','M','E','S','T','A','M','P',
    'D','E','F','E','R','R','E','D','I','S','T','I','N','C','T','D','R','O',
    'P','F','A','I','L','F','R','O','M','F','U','L','L','G','L','O','B','Y',
    'H','A','V','I','N','G','I','F','I','N','S','E','R','T','I','S','N','U',
    'L','L','O','R','D','E','R','I','G','H','T','R','O','L','L','B','A','C',
    'K','U','N','I','Q','U','E','U','S','I','N','G',
  };
  static const unsigned char aHash[127] = {
      79, 70, 83, 50, 0, 24, 0, 0, 56, 0, 54, 0, 0,
       6, 47, 0, 33, 0, 82, 57, 77, 78, 0, 15, 0, 0,
      22, 0, 20, 0, 0, 48, 4, 0, 0, 0, 0, 42, 43,
       0, 41, 0, 0, 0, 60, 49, 0, 62, 67, 0, 0, 30,
       0, 68, 0, 0, 0, 0, 35, 0, 11, 0, 13, 75, 14,
       0, 0, 0, 19, 71, 36, 0, 32, 55, 45, 0, 61, 0,
      66, 0, 0, 65, 0, 0, 0, 0, 0, 63, 0, 74, 0,
       1, 73, 0, 59, 0, 29, 53, 76, 0, 0, 85, 0, 80,
      38, 25, 40, 0, 0, 3, 2, 0, 81, 0, 0, 0, 0,
      17, 0, 58, 52, 39, 0, 8, 37, 0, 84,
  };
  static const unsigned char aNext[85] = {
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0,
       0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 18, 0, 0,
       0, 0, 0, 0, 0, 34, 0, 0, 10, 0, 0, 5, 0,
      28, 0, 0, 26, 0, 0, 0, 0, 31, 0, 0, 0, 0,
       0, 44, 0, 21, 0, 69, 64, 0, 72, 0, 0, 7, 0,
       0, 51, 27, 16, 0, 46, 0,
  };
  static const unsigned char aLen[85] = {
      10, 4, 2, 2, 6, 2, 3, 5, 4, 4, 3, 4, 6,
       4, 6, 11, 2, 7, 3, 4, 3, 9, 9, 4, 2, 7,
       5, 7, 2, 9, 6, 5, 7, 5, 6, 7, 7, 3, 4,
       5, 4, 7, 6, 12, 5, 6, 6, 6, 7, 9, 4, 5,
       7, 5, 5, 6, 4, 5, 5, 3, 7, 3, 6, 8, 5,
      17, 12, 8, 8, 2, 4, 4, 4, 4, 4, 2, 6, 2,
       6, 6, 5, 5, 8, 6, 5,
  };
  static const unsigned short int aOffset[85] = {
       0, 7, 7, 9, 10, 10, 13, 15, 18, 21, 23, 25, 26,
      31, 33, 38, 47, 48, 53, 55, 57, 60, 68, 68, 72, 77,
      81, 85, 89, 91, 99, 105, 108, 108, 114, 120, 126, 126, 129,
     132, 137, 141, 148, 154, 166, 169, 175, 179, 184, 191, 200, 202,
     206, 213, 216, 221, 227, 231, 236, 241, 243, 250, 252, 258, 266,
     271, 271, 288, 295, 296, 303, 307, 311, 315, 319, 322, 324, 330,
     332, 338, 344, 348, 353, 361, 367,
  };
  static const unsigned char aCode[85] = {
    188, 163, 167, 136, 150,
    151, 140, 139, 159, 137,
    178, 182, 177, 179, 141,
    135,149, 159, 200, 157,
    158, 142, 138, 138, 148,
    128, 159, 145, 198, 176,
    175, 196, 165, 166, 183,
    195, 153, 154, 152, 156,
    193, 191, 187, 186, 172,
    133, 169, 157, 146, 168,
    160, 159, 144, 155, 192,
    131, 130, 129, 201, 199,
    185, 197, 190, 189, 159,
    186, 186, 184, 181, 162,
    180, 174, 173, 159, 157,
    194, 171, 170, 164, 161,
    147, 159, 143, 134, 132,
  };
  int i, j;
  const char *zKW;
  if( n>=2 ){
    i = ((charMap(z[0])*4) ^ (charMap(z[n-1])*3) ^ n) % 127;
    for(i=((int)aHash[i])-1; i>=0; i=((int)aNext[i])-1){
      if( aLen[i]!=n ) continue;
      j = 0;
      zKW = &zText[aOffset[i]];






      if( j<n ) continue;
      testcase( i==0 );
      testcase( i==1 );
      testcase( i==2 );
      testcase( i==3 );
      testcase( i==4 );
      testcase( i==5 );
      testcase( i==6 );
      testcase( i==7 );
      testcase( i==8 );
      testcase( i==9 );
      testcase( i==10 );
      testcase( i==11 );
      testcase( i==12 );
      testcase( i==13 );
      testcase( i==14 );
      testcase( i==15 );
      testcase( i==16 );
      testcase( i==17 );
      testcase( i==18 );
      testcase( i==19 );
      testcase( i==20 );
      testcase( i==21 );
      testcase( i==22 );
      testcase( i==23 );
      testcase( i==24 );
      testcase( i==25 );
      testcase( i==26 );
      testcase( i==27 );
      testcase( i==28 );
      testcase( i==29 );
      testcase( i==30 );
      testcase( i==31 );
      testcase( i==32 );
      testcase( i==33 );
      testcase( i==34 );
      testcase( i==35 );
      testcase( i==36 );
      testcase( i==37 );
      testcase( i==38 );
      testcase( i==39 );
      testcase( i==40 );
      testcase( i==41 );
      testcase( i==42 );
      testcase( i==43 );
      testcase( i==44 );
      testcase( i==45 );
      testcase( i==46 );
      testcase( i==47 );
      testcase( i==48 );
      testcase( i==49 );
      testcase( i==50 );
      testcase( i==51 );
      testcase( i==52 );
      testcase( i==53 );
      testcase( i==54 );
      testcase( i==55 );
      testcase( i==56 );
      testcase( i==57 );
      testcase( i==58 );
      testcase( i==59 );
      testcase( i==60 );
      testcase( i==61 );
      testcase( i==62 );
      testcase( i==63 );
      testcase( i==64 );
      testcase( i==65 );
      testcase( i==66 );
      testcase( i==67 );
      testcase( i==68 );
      testcase( i==69 );
      testcase( i==70 );
      testcase( i==71 );
      testcase( i==72 );
      testcase( i==73 );
      testcase( i==74 );
      testcase( i==75 );
      testcase( i==76 );
      testcase( i==77 );
      testcase( i==78 );
      testcase( i==79 );
      testcase( i==80 );
      testcase( i==81 );
      testcase( i==82 );
      testcase( i==83 );
      testcase( i==84 );
      *pType = aCode[i];
      break;
    }
  }
  return n;
}
