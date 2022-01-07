
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_set_clip (int,int,int,int) ;
 int mi_set_clip (int,int,int,int) ;

void
ui_set_clip(int x, int y, int cx, int cy)
{
  bs_set_clip(x, y, cx, cy);
  mi_set_clip(x, y, cx, cy);
}
