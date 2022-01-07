
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int screen_cur_col ;
 int screen_cur_row ;

void
screen_start()
{
    screen_cur_row = screen_cur_col = 9999;
}
