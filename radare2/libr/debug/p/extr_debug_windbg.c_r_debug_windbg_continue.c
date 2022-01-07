
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int wctx ;
 int windbg_continue (int ) ;

__attribute__((used)) static int r_debug_windbg_continue(RDebug *dbg, int pid, int tid, int sig) {
 return windbg_continue(wctx);
}
