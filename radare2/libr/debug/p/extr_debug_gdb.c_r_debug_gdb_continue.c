
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tid; scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__ thread; scalar_t__ is_valid; } ;
struct TYPE_7__ {int tid; TYPE_2__ stop_reason; } ;
typedef int RDebug ;


 int R_DEBUG_REASON_UNKNOWN ;
 int check_connection (int *) ;
 TYPE_3__* desc ;
 int gdbr_continue (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int r_debug_gdb_continue(RDebug *dbg, int pid, int tid, int sig) {
 check_connection (dbg);
 if (!desc) {
  return R_DEBUG_REASON_UNKNOWN;
 }
 gdbr_continue (desc, pid, -1, sig);
 if (desc->stop_reason.is_valid && desc->stop_reason.thread.present) {



  desc->tid = desc->stop_reason.thread.tid;
 }
 return desc->tid;
}
