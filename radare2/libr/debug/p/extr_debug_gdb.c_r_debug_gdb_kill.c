
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int desc ;
 scalar_t__ gdbr_kill (int ) ;

__attribute__((used)) static bool r_debug_gdb_kill(RDebug *dbg, int pid, int tid, int sig) {

 if (sig != 0) {
  if (gdbr_kill (desc) < 0) {
   return 0;
  }
 }
 return 1;
}
