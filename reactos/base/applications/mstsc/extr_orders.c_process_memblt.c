
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int srcy; int srcx; int cy; int cx; int y; int x; int opcode; int cache_idx; int cache_id; int colour_table; } ;
typedef int STREAM ;
typedef int * RD_HBITMAP ;
typedef int RD_BOOL ;
typedef TYPE_1__ MEMBLT_ORDER ;


 int DEBUG (char*) ;
 int ROP2_S (int ) ;
 int * cache_get_bitmap (int ,int ) ;
 int in_uint16_le (int ,int ) ;
 int in_uint8 (int ,int ) ;
 int rdp_in_coord (int ,int *,int ) ;
 int ui_memblt (int ,int ,int ,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
process_memblt(STREAM s, MEMBLT_ORDER * os, uint32 present, RD_BOOL delta)
{
 RD_HBITMAP bitmap;

 if (present & 0x0001)
 {
  in_uint8(s, os->cache_id);
  in_uint8(s, os->colour_table);
 }

 if (present & 0x0002)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x0004)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x0008)
  rdp_in_coord(s, &os->cx, delta);

 if (present & 0x0010)
  rdp_in_coord(s, &os->cy, delta);

 if (present & 0x0020)
  in_uint8(s, os->opcode);

 if (present & 0x0040)
  rdp_in_coord(s, &os->srcx, delta);

 if (present & 0x0080)
  rdp_in_coord(s, &os->srcy, delta);

 if (present & 0x0100)
  in_uint16_le(s, os->cache_idx);

 DEBUG(("MEMBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d)\n",
        os->opcode, os->x, os->y, os->cx, os->cy, os->cache_id, os->cache_idx));

 bitmap = cache_get_bitmap(os->cache_id, os->cache_idx);
 if (bitmap == ((void*)0))
  return;

 ui_memblt(ROP2_S(os->opcode), os->x, os->y, os->cx, os->cy, bitmap, os->srcx, os->srcy);
}
