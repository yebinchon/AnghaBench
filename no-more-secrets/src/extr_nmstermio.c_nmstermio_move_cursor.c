
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURSOR_MOVE (int,int) ;

void nmstermio_move_cursor(int y, int x) {
 CURSOR_MOVE(y, x);
}
