
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getmaxy (int ) ;
 int stdscr ;

int nmstermio_get_rows(void) {
 return getmaxy(stdscr);
}
