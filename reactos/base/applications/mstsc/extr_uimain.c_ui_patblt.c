
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int yorigin; int xorigin; scalar_t__ pattern; int style; } ;
typedef TYPE_1__ BRUSH ;


 int bs_patblt (int ,int,int,int,int,int ,char*,int ,int ,int,int) ;
 int ui_invalidate (int,int,int,int) ;

void
ui_patblt(uint8 opcode, int x, int y, int cx, int cy,
          BRUSH * brush, int bgcolour, int fgcolour)
{
  bs_patblt(opcode, x, y, cx, cy, brush->style, (char *)brush->pattern,
            brush->xorigin, brush->yorigin, bgcolour, fgcolour);
  ui_invalidate(x, y, cx, cy);
}
