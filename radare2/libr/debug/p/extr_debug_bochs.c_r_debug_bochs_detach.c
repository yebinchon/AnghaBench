
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int free (int ) ;
 int saveRegs ;

__attribute__((used)) static int r_debug_bochs_detach(RDebug *dbg, int pid) {

 free (saveRegs);
 return 1;
}
