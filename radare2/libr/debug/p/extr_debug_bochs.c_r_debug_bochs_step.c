
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int bCapturaRegs ;
 int bStep ;
 int bochs_send_cmd (int ,char*,int) ;
 int desc ;
 int isBochs (int *) ;

__attribute__((used)) static int r_debug_bochs_step(RDebug *dbg) {
 if (!isBochs (dbg)) {
  return 0;
 }

 bochs_send_cmd (desc,"s",1);
 bCapturaRegs = 1;
 bStep = 1;
 return 1;
}
