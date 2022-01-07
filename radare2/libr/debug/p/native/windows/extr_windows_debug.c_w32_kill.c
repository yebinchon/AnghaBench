
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
struct TYPE_10__ {int threads; TYPE_3__* user; } ;
struct TYPE_8__ {int * hProcess; } ;
struct TYPE_9__ {TYPE_2__ pi; TYPE_5__* inst; } ;
struct TYPE_7__ {int pid; int type; } ;
typedef TYPE_3__ RIOW32Dbg ;
typedef TYPE_4__ RDebug ;


 int CloseHandle (int *) ;
 scalar_t__ TerminateProcess (int *,int) ;
 int W32_DETTACH ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int *,int ) ;
 int __is_proc_alive (int *) ;
 int r_list_purge (int ) ;
 int r_sys_perror (char*) ;
 int w32dbg_wrap_wait_ret (TYPE_5__*) ;
 int wait_time ;

int w32_kill(RDebug *dbg, int pid, int tid, int sig) {
 RIOW32Dbg *rio = dbg->user;

 if (sig == 0) {
  if (!__is_proc_alive (rio->pi.hProcess)) {
   r_list_purge (dbg->threads);
   return 0;
  }
  return 1;
 }

 rio->inst->params->type = W32_DETTACH;
 rio->inst->params->pid = pid;
 w32dbg_wrap_wait_ret (rio->inst);

 bool ret = 0;
 if (TerminateProcess (rio->pi.hProcess, 1)) {
  if (WaitForSingleObject (rio->pi.hProcess, wait_time) != WAIT_OBJECT_0) {
   r_sys_perror ("w32_kill/WaitForSingleObject");
  } else {
   ret = 1;
  }
 }
 r_list_purge (dbg->threads);
 CloseHandle (rio->pi.hProcess);
 rio->pi.hProcess = ((void*)0);
 return ret;
}
