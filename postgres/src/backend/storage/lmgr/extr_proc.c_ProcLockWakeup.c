
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ next; } ;
struct TYPE_16__ {int size; TYPE_1__ links; } ;
struct TYPE_19__ {TYPE_3__ waitProcs; } ;
struct TYPE_18__ {int* conflictTab; } ;
struct TYPE_15__ {scalar_t__ next; } ;
struct TYPE_17__ {size_t waitLockMode; TYPE_2__ links; int waitProcLock; } ;
typedef TYPE_3__ PROC_QUEUE ;
typedef TYPE_4__ PGPROC ;
typedef TYPE_5__* LockMethod ;
typedef size_t LOCKMODE ;
typedef int LOCKMASK ;
typedef TYPE_6__ LOCK ;


 int Assert (int) ;
 int GrantLock (TYPE_6__*,int ,size_t) ;
 int LOCKBIT_ON (size_t) ;
 scalar_t__ LockCheckConflicts (TYPE_5__*,size_t,TYPE_6__*,int ) ;
 TYPE_4__* ProcWakeup (TYPE_4__*,scalar_t__) ;
 scalar_t__ STATUS_OK ;

void
ProcLockWakeup(LockMethod lockMethodTable, LOCK *lock)
{
 PROC_QUEUE *waitQueue = &(lock->waitProcs);
 int queue_size = waitQueue->size;
 PGPROC *proc;
 LOCKMASK aheadRequests = 0;

 Assert(queue_size >= 0);

 if (queue_size == 0)
  return;

 proc = (PGPROC *) waitQueue->links.next;

 while (queue_size-- > 0)
 {
  LOCKMODE lockmode = proc->waitLockMode;





  if ((lockMethodTable->conflictTab[lockmode] & aheadRequests) == 0 &&
   LockCheckConflicts(lockMethodTable,
          lockmode,
          lock,
          proc->waitProcLock) == STATUS_OK)
  {

   GrantLock(lock, proc->waitProcLock, lockmode);
   proc = ProcWakeup(proc, STATUS_OK);






  }
  else
  {



   aheadRequests |= LOCKBIT_ON(lockmode);
   proc = (PGPROC *) proc->links.next;
  }
 }

 Assert(waitQueue->size >= 0);
}
