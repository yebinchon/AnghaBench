
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * next; int * prev; } ;
struct TYPE_9__ {int waitStatus; int procLatch; int * waitProcLock; TYPE_2__* waitLock; TYPE_4__ links; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_8__ {TYPE_1__ waitProcs; } ;
typedef TYPE_3__ PGPROC ;


 int Assert (int) ;
 int SHMQueueDelete (TYPE_4__*) ;
 int STATUS_WAITING ;
 int SetLatch (int *) ;

PGPROC *
ProcWakeup(PGPROC *proc, int waitStatus)
{
 PGPROC *retProc;


 if (proc->links.prev == ((void*)0) ||
  proc->links.next == ((void*)0))
  return ((void*)0);
 Assert(proc->waitStatus == STATUS_WAITING);


 retProc = (PGPROC *) proc->links.next;


 SHMQueueDelete(&(proc->links));
 (proc->waitLock->waitProcs.size)--;


 proc->waitLock = ((void*)0);
 proc->waitProcLock = ((void*)0);
 proc->waitStatus = waitStatus;


 SetLatch(&proc->procLatch);

 return retProc;
}
