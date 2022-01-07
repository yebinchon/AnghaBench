
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int cy; int cx; int y; int x; int opcode; } ;
typedef int STREAM ;
typedef int RD_BOOL ;
typedef TYPE_1__ DESTBLT_ORDER ;


 int DEBUG (char*) ;
 int ROP2_S (int ) ;
 int in_uint8 (int ,int ) ;
 int rdp_in_coord (int ,int *,int ) ;
 int ui_destblt (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
process_destblt(STREAM s, DESTBLT_ORDER * os, uint32 present, RD_BOOL delta)
{
 if (present & 0x01)
  rdp_in_coord(s, &os->x, delta);

 if (present & 0x02)
  rdp_in_coord(s, &os->y, delta);

 if (present & 0x04)
  rdp_in_coord(s, &os->cx, delta);

 if (present & 0x08)
  rdp_in_coord(s, &os->cy, delta);

 if (present & 0x10)
  in_uint8(s, os->opcode);

 DEBUG(("DESTBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d)\n",
        os->opcode, os->x, os->y, os->cx, os->cy));

 ui_destblt(ROP2_S(os->opcode), os->x, os->y, os->cx, os->cy);
}
