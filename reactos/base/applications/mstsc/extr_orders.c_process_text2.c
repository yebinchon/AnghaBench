
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int style; } ;
struct TYPE_5__ {int font; int flags; int opcode; int mixmode; int length; int * text; int fgcolour; int bgcolour; scalar_t__ boxtop; scalar_t__ boxbottom; scalar_t__ boxleft; scalar_t__ boxright; scalar_t__ cliptop; scalar_t__ clipbottom; scalar_t__ clipleft; scalar_t__ clipright; scalar_t__ y; scalar_t__ x; TYPE_2__ brush; } ;
typedef TYPE_1__ TEXT2_ORDER ;
typedef int STREAM ;
typedef int RD_BOOL ;
typedef int BRUSH ;


 int DEBUG (char*) ;
 int in_uint16_le (int ,scalar_t__) ;
 int in_uint8 (int ,int) ;
 int in_uint8a (int ,int *,int) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_parse_brush (int ,TYPE_2__*,int) ;
 int setup_brush (int *,TYPE_2__*) ;
 int ui_draw_text (int,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ,int *,int) ;

__attribute__((used)) static void
process_text2(STREAM s, TEXT2_ORDER * os, uint32 present, RD_BOOL delta)
{
 int i;
 BRUSH brush;

 if (present & 0x000001)
  in_uint8(s, os->font);

 if (present & 0x000002)
  in_uint8(s, os->flags);

 if (present & 0x000004)
  in_uint8(s, os->opcode);

 if (present & 0x000008)
  in_uint8(s, os->mixmode);

 if (present & 0x000010)
  rdp_in_colour(s, &os->fgcolour);

 if (present & 0x000020)
  rdp_in_colour(s, &os->bgcolour);

 if (present & 0x000040)
  in_uint16_le(s, os->clipleft);

 if (present & 0x000080)
  in_uint16_le(s, os->cliptop);

 if (present & 0x000100)
  in_uint16_le(s, os->clipright);

 if (present & 0x000200)
  in_uint16_le(s, os->clipbottom);

 if (present & 0x000400)
  in_uint16_le(s, os->boxleft);

 if (present & 0x000800)
  in_uint16_le(s, os->boxtop);

 if (present & 0x001000)
  in_uint16_le(s, os->boxright);

 if (present & 0x002000)
  in_uint16_le(s, os->boxbottom);

 rdp_parse_brush(s, &os->brush, present >> 14);

 if (present & 0x080000)
  in_uint16_le(s, os->x);

 if (present & 0x100000)
  in_uint16_le(s, os->y);

 if (present & 0x200000)
 {
  in_uint8(s, os->length);
  in_uint8a(s, os->text, os->length);
 }

 DEBUG(("TEXT2(x=%d,y=%d,cl=%d,ct=%d,cr=%d,cb=%d,bl=%d,bt=%d,br=%d,bb=%d,bs=%d,bg=0x%x,fg=0x%x,font=%d,fl=0x%x,op=0x%x,mix=%d,n=%d)\n", os->x, os->y, os->clipleft, os->cliptop, os->clipright, os->clipbottom, os->boxleft, os->boxtop, os->boxright, os->boxbottom, os->brush.style, os->bgcolour, os->fgcolour, os->font, os->flags, os->opcode, os->mixmode, os->length));

 DEBUG(("Text: "));

 for (i = 0; i < os->length; i++)
  DEBUG(("%02x ", os->text[i]));

 DEBUG(("\n"));

 setup_brush(&brush, &os->brush);

 ui_draw_text(os->font, os->flags, os->opcode - 1, os->mixmode, os->x, os->y,
       os->clipleft, os->cliptop, os->clipright - os->clipleft,
       os->clipbottom - os->cliptop, os->boxleft, os->boxtop,
       os->boxright - os->boxleft, os->boxbottom - os->boxtop,
       &brush, os->bgcolour, os->fgcolour, os->text, os->length);
}
