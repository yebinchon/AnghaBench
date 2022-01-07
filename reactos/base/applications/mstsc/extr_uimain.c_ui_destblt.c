
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int bs_rect (int,int,int,int,int ,int ) ;
 int ui_invalidate (int,int,int,int) ;

void
ui_destblt(uint8 opcode, int x, int y, int cx, int cy)
{
  bs_rect(x, y, cx, cy, 0, opcode);
  ui_invalidate(x, y, cx, cy);

}
