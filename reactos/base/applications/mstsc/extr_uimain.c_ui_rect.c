
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_rect (int,int,int,int,int,int) ;
 int mi_fill_rect (int,int,int,int,int) ;

void
ui_rect(int x, int y, int cx, int cy, int colour)
{
  bs_rect(x, y, cx, cy, colour, 12);
  mi_fill_rect(x, y, cx, cy, colour);
}
