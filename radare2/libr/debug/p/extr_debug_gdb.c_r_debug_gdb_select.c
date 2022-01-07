
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int * desc ;
 scalar_t__ gdbr_select (int *,int,int) ;
 int * origriogdb ;

__attribute__((used)) static bool r_debug_gdb_select(RDebug *dbg, int pid, int tid) {
 if (!desc || !*origriogdb) {
  desc = ((void*)0);
  return 0;
 }

 return gdbr_select (desc, pid, tid) >= 0;
}
