
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* params; } ;
typedef TYPE_4__ w32dbg_wrap_instance ;
struct TYPE_12__ {int io; } ;
struct TYPE_17__ {int tid; TYPE_1__ iob; TYPE_5__* user; } ;
struct TYPE_13__ {int dwThreadId; int dwProcessId; } ;
struct TYPE_16__ {TYPE_2__ pi; TYPE_4__* inst; } ;
struct TYPE_14__ {int continue_status; int tid; int pid; int type; } ;
typedef TYPE_5__ RIOW32Dbg ;
typedef TYPE_6__ RDebug ;
typedef int DWORD ;


 int DBG_EXCEPTION_HANDLED ;
 int DBG_EXCEPTION_NOT_HANDLED ;
 int W32_CONTINUE ;
 int breaked ;
 int r_io_system (int ,int ) ;
 int r_sys_perror (char*) ;
 int sdb_fmt (char*,int) ;
 int w32_select (TYPE_6__*,int,int) ;
 int w32dbg_wrap_wait_ret (TYPE_4__*) ;
 int w32dbgw_err (TYPE_4__*) ;
 int w32dbgw_intret (TYPE_4__*) ;

int w32_continue(RDebug *dbg, int pid, int tid, int sig) {

 RIOW32Dbg *rio = dbg->user;
 DWORD continue_status = (sig == DBG_EXCEPTION_NOT_HANDLED)
  ? DBG_EXCEPTION_NOT_HANDLED : DBG_EXCEPTION_HANDLED;
 dbg->tid = w32_select (dbg, pid, tid);
 r_io_system (dbg->iob.io, sdb_fmt ("pid %d", dbg->tid));


 if (dbg->tid != tid) {
  return -1;
 }

 if (breaked) {
  breaked = 0;
  return -1;
 }
 w32dbg_wrap_instance *inst = rio->inst;
 inst->params->type = W32_CONTINUE;
 inst->params->pid = rio->pi.dwProcessId;
 inst->params->tid = rio->pi.dwThreadId;
 inst->params->continue_status = continue_status;
 w32dbg_wrap_wait_ret (inst);
 if (!w32dbgw_intret (inst)) {
  w32dbgw_err (inst);
  r_sys_perror ("w32_continue/ContinueDebugEvent");
  return -1;
 }

 return tid;
}
