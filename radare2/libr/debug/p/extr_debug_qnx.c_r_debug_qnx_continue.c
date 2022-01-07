
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int desc ;
 int qnxr_continue (int ,int) ;

__attribute__((used)) static int r_debug_qnx_continue (RDebug *dbg, int pid, int tid, int sig) {
 qnxr_continue (desc, -1);
 return 1;
}
