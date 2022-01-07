
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getcury (int ) ;
 int stdscr ;

int nmstermio_get_cursor_row(void) {
 return getcury(stdscr);
}
