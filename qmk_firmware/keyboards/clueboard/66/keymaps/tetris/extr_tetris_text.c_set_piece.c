
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_piece (char**) ;
 int rotate_piece (char**) ;

__attribute__((used)) static void set_piece(char piece[7][7], int shape, int rotation) {
  clear_piece(piece);
  switch (shape) {
  case 0:
    if (rotation % 2 == 0) {

      piece[3][1] = 1;
      piece[3][2] = 1;
      piece[3][3] = 1;
      piece[3][4] = 1;
    } else {




      piece[1][3] = 1;
      piece[2][3] = 1;
      piece[3][3] = 1;
      piece[4][3] = 1;
    }
    break;
  case 1:


    piece[3][2] = 1;
    piece[3][3] = 1;
    piece[3][4] = 1;
    piece[4][4] = 1;
    for (int i = 0; i < rotation; i++) {
      rotate_piece(piece);
    }
    break;
  case 2:


    piece[3][2] = 1;
    piece[3][3] = 1;
    piece[3][4] = 1;
    piece[4][2] = 1;
    for (int i = 0; i < rotation; i++) {
      rotate_piece(piece);
    }
    break;
  case 3:


    piece[3][2] = 1;
    piece[3][3] = 1;
    piece[4][2] = 1;
    piece[4][3] = 1;
    break;
  case 4:
    if (rotation % 2 == 0) {


      piece[3][2] = 1;
      piece[3][3] = 1;
      piece[4][3] = 1;
      piece[4][4] = 1;
    } else {



      piece[2][3] = 1;
      piece[3][2] = 1;
      piece[3][3] = 1;
      piece[4][2] = 1;
    }
    break;
  case 5:


    piece[3][2] = 1;
    piece[3][3] = 1;
    piece[3][4] = 1;
    piece[4][3] = 1;
    for (int i = 0; i < rotation; i++) {
      rotate_piece(piece);
    }
    break;
  case 6:
    if (rotation % 2 == 0) {


      piece[3][3] = 1;
      piece[3][4] = 1;
      piece[4][2] = 1;
      piece[4][3] = 1;
    } else {



      piece[2][3] = 1;
      piece[3][3] = 1;
      piece[3][4] = 1;
      piece[4][4] = 1;
    }
    break;
  }
}
