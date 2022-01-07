
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int bs_screenblt (int,int,int,int,int,int,int) ;
 int mi_screen_copy (int,int,int,int,int,int) ;
 int ui_invalidate (int,int,int,int) ;

void
ui_screenblt(uint8 opcode, int x, int y, int cx, int cy,
             int srcx, int srcy)
{
  bs_screenblt(opcode, x, y, cx, cy, srcx, srcy);
  if (opcode == 12)
  {
    mi_screen_copy(x, y, cx, cy, srcx, srcy);
  }
  else
  {
    ui_invalidate(x, y, cx, cy);
  }
}
