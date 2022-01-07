
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void rotate_piece(char piece[7][7]) {

  for (int y = 0; y < 7; y++) {
    for (int x = y + 1; x < 7; x++) {
      char tmp = piece[y][x];
      piece[y][x] = piece[x][y];
      piece[x][y] = tmp;
    }
  }


  for (int y = 0; y < 7; y++) {
    for (int x = 0; x < 3; x++) {
      char tmp = piece[y][6 - x];
      piece[y][6 - x] = piece[y][x];
      piece[y][x] = tmp;
    }
  }
}
