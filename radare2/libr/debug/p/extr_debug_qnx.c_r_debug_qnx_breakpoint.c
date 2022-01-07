
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; scalar_t__ hw; } ;
typedef TYPE_1__ RBreakpointItem ;
typedef int RBreakpoint ;


 int desc ;
 int qnxr_remove_bp (int ,int ) ;
 int qnxr_remove_hwbp (int ,int ) ;
 int qnxr_set_bp (int ,int ,char*) ;
 int qnxr_set_hwbp (int ,int ,char*) ;

__attribute__((used)) static int r_debug_qnx_breakpoint (RBreakpoint *bp, RBreakpointItem *b, bool set) {
 if (!b) {
  return 0;
 }
 int ret = set
  ? b->hw
   ? qnxr_set_hwbp (desc, b->addr, "")
   : qnxr_set_bp (desc, b->addr, "")
  : b->hw
   ? qnxr_remove_hwbp (desc, b->addr)
   : qnxr_remove_bp (desc, b->addr);
 return !ret;
}
