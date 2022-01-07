
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int style; } ;
struct TYPE_5__ {int fgcolour; int bgcolour; int cy; int cx; int y; int x; int opcode; TYPE_2__ brush; } ;
typedef int STREAM ;
typedef int RD_BOOL ;
typedef TYPE_1__ PATBLT_ORDER ;
typedef int BRUSH ;


 int DEBUG (char*) ;
 int ROP2_P (int ) ;
 int in_uint8 (int ,int ) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,int *,int ) ;
 int rdp_parse_brush (int ,TYPE_2__*,int) ;
 int setup_brush (int *,TYPE_2__*) ;
 int ui_patblt (int ,int ,int ,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
process_patblt(STREAM s, PATBLT_ORDER * os, uint32 present, RD_BOOL delta)
{
 BRUSH brush;

 if (present & 0x0001)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x0002)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x0004)
  rdp_in_coord(s, &os->cx, delta);

 if (present & 0x0008)
  rdp_in_coord(s, &os->cy, delta);

 if (present & 0x0010)
  in_uint8(s, os->opcode);

 if (present & 0x0020)
  rdp_in_colour(s, &os->bgcolour);

 if (present & 0x0040)
  rdp_in_colour(s, &os->fgcolour);

 rdp_parse_brush(s, &os->brush, present >> 7);

 DEBUG(("PATBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,bs=%d,bg=0x%x,fg=0x%x)\n", os->opcode, os->x,
        os->y, os->cx, os->cy, os->brush.style, os->bgcolour, os->fgcolour));

 setup_brush(&brush, &os->brush);

 ui_patblt(ROP2_P(os->opcode), os->x, os->y, os->cx, os->cy,
    &brush, os->bgcolour, os->fgcolour);
}
