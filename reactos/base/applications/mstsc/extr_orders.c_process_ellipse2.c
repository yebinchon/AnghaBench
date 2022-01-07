
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int style; } ;
struct TYPE_5__ {int fgcolour; int bgcolour; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ fillmode; scalar_t__ opcode; TYPE_2__ brush; } ;
typedef int STREAM ;
typedef int RD_BOOL ;
typedef TYPE_1__ ELLIPSE2_ORDER ;
typedef int BRUSH ;


 int DEBUG (char*) ;
 int in_uint8 (int ,scalar_t__) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,scalar_t__*,int ) ;
 int rdp_parse_brush (int ,TYPE_2__*,int) ;
 int setup_brush (int *,TYPE_2__*) ;
 int ui_ellipse (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ) ;

__attribute__((used)) static void
process_ellipse2(STREAM s, ELLIPSE2_ORDER * os, uint32 present, RD_BOOL delta)
{
 BRUSH brush;

 if (present & 0x0001)
  rdp_in_coord(s, &os->left, delta);

 if (present & 0x0002)
  rdp_in_coord(s, &os->top, delta);

 if (present & 0x0004)
  rdp_in_coord(s, &os->right, delta);

 if (present & 0x0008)
  rdp_in_coord(s, &os->bottom, delta);

 if (present & 0x0010)
  in_uint8(s, os->opcode);

 if (present & 0x0020)
  in_uint8(s, os->fillmode);

 if (present & 0x0040)
  rdp_in_colour(s, &os->bgcolour);

 if (present & 0x0080)
  rdp_in_colour(s, &os->fgcolour);

 rdp_parse_brush(s, &os->brush, present >> 8);

 DEBUG(("ELLIPSE2(l=%d,t=%d,r=%d,b=%d,op=0x%x,fm=%d,bs=%d,bg=0x%x,fg=0x%x)\n",
        os->left, os->top, os->right, os->bottom, os->opcode, os->fillmode, os->brush.style,
        os->bgcolour, os->fgcolour));

 setup_brush(&brush, &os->brush);

 ui_ellipse(os->opcode - 1, os->fillmode, os->left, os->top, os->right - os->left,
     os->bottom - os->top, &brush, os->bgcolour, os->fgcolour);
}
