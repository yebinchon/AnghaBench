
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nhwbps; } ;
struct TYPE_5__ {int perm; int size; int addr; } ;
typedef int RDebug ;
typedef TYPE_1__ RBreakpointItem ;
typedef TYPE_2__ RBreakpoint ;


 int R_REG_TYPE_DRX ;
 int r_debug_drx_set (int *,int,int ,int ,int ,int ) ;
 int r_debug_reg_sync (int *,int ,int) ;

bool drx_add(RDebug *dbg, RBreakpoint *bp, RBreakpointItem *b) {
 if (bp->nhwbps < 4) {
  r_debug_reg_sync (dbg, R_REG_TYPE_DRX, 0);
  r_debug_drx_set (dbg, bp->nhwbps, b->addr, b->size, b->perm, 0);
  r_debug_reg_sync (dbg, R_REG_TYPE_DRX, 1);
  bp->nhwbps++;
  return 1;
 }
 return 0;
}
