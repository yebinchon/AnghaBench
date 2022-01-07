
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int width; scalar_t__ style; int colour; } ;
typedef TYPE_1__ PEN ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 int bs_line (int,int,int,int,int,int,scalar_t__,int ) ;
 int mi_line (int,int,int,int,int ) ;
 int ui_invalidate (int,int,int,int) ;

void
ui_line(uint8 opcode, int startx, int starty, int endx, int endy,
        PEN * pen)
{
  int x;
  int y;
  int cx;
  int cy;

  bs_line(opcode, startx, starty, endx, endy, pen->width, pen->style,
          pen->colour);
  if (pen->style == 0 && pen->width < 2 && opcode == 12)
  {
    mi_line(startx, starty, endx, endy, pen->colour);
  }
  else
  {
    x = MIN(startx, endx);
    y = MIN(starty, endy);
    cx = (MAX(startx, endx) + 1) - x;
    cy = (MAX(starty, endy) + 1) - y;
    ui_invalidate(x, y, cx, cy);
  }
}
