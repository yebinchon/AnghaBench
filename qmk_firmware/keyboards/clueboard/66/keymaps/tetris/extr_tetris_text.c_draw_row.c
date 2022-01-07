
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curx ;
 int cury ;
 int send_backspaces (int) ;
 int send_deletes (int) ;
 int send_goto_xy (int,int) ;
 int tetris_send_string (char*) ;

__attribute__((used)) static void draw_row(char c, const char oldrow[7], const char newrow[7], int x, int y) {
  char str[2] = { c, 0 };
  char row_is_del[7] = { 0 };
  int first = -1;
  int last = -1;
  for (int px = 0; px < 7; px++) {
    if (oldrow[px] && !newrow[px]) {
      row_is_del[px] = 1;
    }
    if (newrow[px] || oldrow[px]) {
      if (first == -1) first = px;
      last = px;
    }
  }

  if (first >= 0) {
    if (curx > x + last + 1) {
      send_goto_xy(x + last + 1, cury);
    }
    if (curx < x + first) {
      send_goto_xy(x + first, cury);
    }
    send_goto_xy(curx, y);
    send_deletes((x + last + 1) - curx);
    send_backspaces(curx - (x + first));
    for (int i = first; i <= last; i++) {
      if (row_is_del[i]) {
        tetris_send_string(".");
      } else {
        tetris_send_string(str);
      }
      curx++;
    }
  }
}
