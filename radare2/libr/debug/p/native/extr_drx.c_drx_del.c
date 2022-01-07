
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nhwbps; } ;
typedef int RDebug ;
typedef int RBreakpointItem ;
typedef TYPE_1__ RBreakpoint ;


 int R_REG_TYPE_DRX ;
 int r_debug_drx_set (int *,scalar_t__,int ,int ,int ,int ) ;
 int r_debug_reg_sync (int *,int ,int) ;

bool drx_del(RDebug *dbg, RBreakpoint *bp, RBreakpointItem *b) {
 if (bp->nhwbps > 0) {
  r_debug_reg_sync (dbg, R_REG_TYPE_DRX, 0);
  r_debug_drx_set (dbg, bp->nhwbps, 0, 0, 0, 0);
  r_debug_reg_sync (dbg, R_REG_TYPE_DRX, 1);
  bp->nhwbps--;
  return 1;
 }
 return 0;
}
