
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* params; } ;
struct TYPE_10__ {int pid; TYPE_3__* user; } ;
struct TYPE_8__ {int * hProcess; } ;
struct TYPE_9__ {TYPE_2__ pi; TYPE_5__* inst; } ;
struct TYPE_7__ {int pid; int ret; int type; } ;
typedef TYPE_3__ RIOW32Dbg ;
typedef TYPE_4__ RDebug ;


 int CloseHandle (int *) ;
 int W32_DETTACH ;
 int w32dbg_wrap_wait_ret (TYPE_5__*) ;

int w32_detach(RDebug *dbg, int pid) {
 if (pid == -1 || dbg->pid != pid) {
  return 0;
 }
 RIOW32Dbg *rio = dbg->user;
 bool ret = 0;
 if (rio->pi.hProcess) {
  rio->inst->params->type = W32_DETTACH;
  rio->inst->params->pid = pid;
  w32dbg_wrap_wait_ret (rio->inst);
  ret = rio->inst->params->ret;
 }
 if (rio->pi.hProcess) {
  CloseHandle (rio->pi.hProcess);
  rio->pi.hProcess = ((void*)0);
 }
 return ret;
}
