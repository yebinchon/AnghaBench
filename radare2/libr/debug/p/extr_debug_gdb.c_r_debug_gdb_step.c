
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tid; } ;
typedef TYPE_1__ RDebug ;


 int R_DEBUG_REASON_UNKNOWN ;
 int check_connection (TYPE_1__*) ;
 int desc ;
 int gdbr_step (int ,int ) ;

__attribute__((used)) static int r_debug_gdb_step(RDebug *dbg) {
 check_connection (dbg);
 if (!desc) {
  return R_DEBUG_REASON_UNKNOWN;
 }
 gdbr_step (desc, dbg->tid);
 return 1;
}
