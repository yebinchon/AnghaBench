
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int perm; int addr; int hw; } ;
typedef TYPE_1__ RBreakpointItem ;
typedef int RBreakpoint ;






 int desc ;
 int gdbr_remove_bp (int ,int ,int) ;
 int gdbr_remove_hwa (int ,int ,int) ;
 int gdbr_remove_hwbp (int ,int ,int) ;
 int gdbr_remove_hwr (int ,int ,int) ;
 int gdbr_remove_hww (int ,int ,int) ;
 int gdbr_set_bp (int ,int ,char*,int) ;
 int gdbr_set_hwa (int ,int ,char*,int) ;
 int gdbr_set_hwbp (int ,int ,char*,int) ;
 int gdbr_set_hwr (int ,int ,char*,int) ;
 int gdbr_set_hww (int ,int ,char*,int) ;

__attribute__((used)) static int r_debug_gdb_breakpoint (RBreakpoint *bp, RBreakpointItem *b, bool set) {
 int ret = 0, bpsize;
 if (!b) {
  return 0;
 }
 bpsize = b->size;

 switch (b->perm) {
 case 131 : {
  if (set) {
   ret = b->hw?
     gdbr_set_hwbp (desc, b->addr, "", bpsize):
     gdbr_set_bp (desc, b->addr, "", bpsize);
  } else {
   ret = b->hw ? gdbr_remove_hwbp (desc, b->addr, bpsize) : gdbr_remove_bp (desc, b->addr, bpsize);
  }
  break;
 }

 case 128: {
  if (set) {
   gdbr_set_hww (desc, b->addr, "", 1);
  } else {
   gdbr_remove_hww (desc, b->addr, 1);
  }
  break;
 }
 case 129: {
  if (set) {
   gdbr_set_hwr (desc, b->addr, "", 1);
  } else {
   gdbr_remove_hwr (desc, b->addr, 1);
  }
  break;
 }
 case 130: {
  if (set) {
   gdbr_set_hwa (desc, b->addr, "", 1);
  } else {
   gdbr_remove_hwa (desc, b->addr, 1);
  }
  break;
 }
 }
 return !ret;
}
