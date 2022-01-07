
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw_row (char,char*,char*,int,int) ;

__attribute__((used)) static void draw_piece(char c, int x, int y, char oldpiece[7][7], char piece[7][7]) {
  for (int py = 0; py < 7; py++) {
    draw_row(c, oldpiece[py], piece[py], x, y + py);
  }
}
