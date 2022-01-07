
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int style; } ;
struct TYPE_5__ {int fgcolour; int bgcolour; int srcy; int srcx; int cy; int cx; int y; int x; int opcode; TYPE_2__ brush; int cache_idx; int cache_id; int unknown; int colour_table; } ;
typedef TYPE_1__ TRIBLT_ORDER ;
typedef int STREAM ;
typedef int * RD_HBITMAP ;
typedef int RD_BOOL ;
typedef int BRUSH ;


 int DEBUG (char*) ;
 int * cache_get_bitmap (int ,int ) ;
 int in_uint16_le (int ,int ) ;
 int in_uint8 (int ,int ) ;
 int rdp_in_colour (int ,int *) ;
 int rdp_in_coord (int ,int *,int ) ;
 int rdp_parse_brush (int ,TYPE_2__*,int) ;
 int setup_brush (int *,TYPE_2__*) ;
 int ui_triblt (int ,int ,int ,int ,int ,int *,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
process_triblt(STREAM s, TRIBLT_ORDER * os, uint32 present, RD_BOOL delta)
{
 RD_HBITMAP bitmap;
 BRUSH brush;

 if (present & 0x000001)
 {
  in_uint8(s, os->cache_id);
  in_uint8(s, os->colour_table);
 }

 if (present & 0x000002)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x000004)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x000008)
  rdp_in_coord(s, &os->cx, delta);

 if (present & 0x000010)
  rdp_in_coord(s, &os->cy, delta);

 if (present & 0x000020)
  in_uint8(s, os->opcode);

 if (present & 0x000040)
  rdp_in_coord(s, &os->srcx, delta);

 if (present & 0x000080)
  rdp_in_coord(s, &os->srcy, delta);

 if (present & 0x000100)
  rdp_in_colour(s, &os->bgcolour);

 if (present & 0x000200)
  rdp_in_colour(s, &os->fgcolour);

 rdp_parse_brush(s, &os->brush, present >> 10);

 if (present & 0x008000)
  in_uint16_le(s, os->cache_idx);

 if (present & 0x010000)
  in_uint16_le(s, os->unknown);

 DEBUG(("TRIBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d,bs=%d,bg=0x%x,fg=0x%x)\n",
        os->opcode, os->x, os->y, os->cx, os->cy, os->cache_id, os->cache_idx,
        os->brush.style, os->bgcolour, os->fgcolour));

 bitmap = cache_get_bitmap(os->cache_id, os->cache_idx);
 if (bitmap == ((void*)0))
  return;

 setup_brush(&brush, &os->brush);

 ui_triblt(os->opcode, os->x, os->y, os->cx, os->cy,
    bitmap, os->srcx, os->srcy, &brush, os->bgcolour, os->fgcolour);
}
