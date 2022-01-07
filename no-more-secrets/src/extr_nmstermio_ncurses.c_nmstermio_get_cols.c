
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getmaxx (int ) ;
 int stdscr ;

int nmstermio_get_cols(void) {
 return getmaxx(stdscr);
}
