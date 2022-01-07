
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ free; } ;
typedef scalar_t__ RListFree ;
typedef TYPE_1__ RList ;
typedef int RDebug ;


 int desc ;
 TYPE_1__* gdbr_threads_list (int ,int) ;
 int r_debug_pid_free ;

__attribute__((used)) static RList* r_debug_gdb_threads(RDebug *dbg, int pid) {
 RList *list;
 if ((list = gdbr_threads_list (desc, pid))) {
  list->free = (RListFree) &r_debug_pid_free;
 }
 return list;
}
