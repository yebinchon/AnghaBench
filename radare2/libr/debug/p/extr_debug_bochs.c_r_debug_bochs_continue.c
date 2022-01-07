
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int bBreak ;
 int bCapturaRegs ;
 int bochs_send_cmd (int ,char*,int) ;
 int desc ;

__attribute__((used)) static int r_debug_bochs_continue(RDebug *dbg, int pid, int tid, int sig) {

 bochs_send_cmd (desc, "c", 0);
 bCapturaRegs = 1;
 bBreak = 0;
 return 1;
}
