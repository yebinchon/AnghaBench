
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int startupProcPid; TYPE_1__* startupProc; } ;
struct TYPE_4__ {int procLatch; } ;
typedef TYPE_1__ PGPROC ;


 TYPE_1__* BackendPidGetProc (int) ;
 TYPE_2__* ProcGlobal ;
 int ProcStructLock ;
 scalar_t__ RecoveryInProgress () ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;

void
ProcSendSignal(int pid)
{
 PGPROC *proc = ((void*)0);

 if (RecoveryInProgress())
 {
  SpinLockAcquire(ProcStructLock);
  if (pid == ProcGlobal->startupProcPid)
   proc = ProcGlobal->startupProc;

  SpinLockRelease(ProcStructLock);
 }

 if (proc == ((void*)0))
  proc = BackendPidGetProc(pid);

 if (proc != ((void*)0))
 {
  SetLatch(&proc->procLatch);
 }
}
