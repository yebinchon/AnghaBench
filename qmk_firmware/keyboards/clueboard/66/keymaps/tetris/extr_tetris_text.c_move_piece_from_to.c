
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void move_piece_from_to(char from[7][7], char to[7][7], int xadd, int yadd) {
  for (int y = 0; y < 7; y++) {
    for (int x = 0; x < 7; x++) {
      if (x + xadd >= 0 && x + xadd < 7 && y + yadd >= 0 && y + yadd < 7) {
        to[y][x] = from[y + yadd][x + xadd];
      } else {
        to[y][x] = 0;
      }
    }
  }
}
