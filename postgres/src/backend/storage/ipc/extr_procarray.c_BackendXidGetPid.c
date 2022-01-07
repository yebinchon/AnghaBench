
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_9__ {int pid; } ;
struct TYPE_8__ {scalar_t__ xid; } ;
struct TYPE_7__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 scalar_t__ InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 TYPE_1__* procArray ;

int
BackendXidGetPid(TransactionId xid)
{
 int result = 0;
 ProcArrayStruct *arrayP = procArray;
 int index;

 if (xid == InvalidTransactionId)
  return 0;

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  PGXACT *pgxact = &allPgXact[pgprocno];

  if (pgxact->xid == xid)
  {
   result = proc->pid;
   break;
  }
 }

 LWLockRelease(ProcArrayLock);

 return result;
}
