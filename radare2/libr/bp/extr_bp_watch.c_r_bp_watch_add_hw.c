
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* breakpoint ) (TYPE_1__*,int *,int) ;} ;
typedef int RBreakpointItem ;
typedef TYPE_1__ RBreakpoint ;


 int stub1 (TYPE_1__*,int *,int) ;

__attribute__((used)) static void r_bp_watch_add_hw(RBreakpoint *bp, RBreakpointItem *b) {
 if (bp->breakpoint) {
  bp->breakpoint (bp, b, 1);
 }
}
