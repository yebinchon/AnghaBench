
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_11__ {int latestCompletedXid; } ;
struct TYPE_10__ {int xid; } ;
struct TYPE_9__ {scalar_t__ pid; size_t pgprocno; } ;
struct TYPE_8__ {int numProcs; size_t* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGPROC ;


 int Assert (int) ;
 int DisplayXidCache () ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 TYPE_6__* ShmemVariableCache ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 TYPE_5__* allPgXact ;
 int elog (int ,char*,TYPE_2__*) ;
 int memmove (size_t*,size_t*,int) ;
 TYPE_1__* procArray ;

void
ProcArrayRemove(PGPROC *proc, TransactionId latestXid)
{
 ProcArrayStruct *arrayP = procArray;
 int index;







 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 if (TransactionIdIsValid(latestXid))
 {
  Assert(TransactionIdIsValid(allPgXact[proc->pgprocno].xid));


  if (TransactionIdPrecedes(ShmemVariableCache->latestCompletedXid,
          latestXid))
   ShmemVariableCache->latestCompletedXid = latestXid;
 }
 else
 {

  Assert(!TransactionIdIsValid(allPgXact[proc->pgprocno].xid));
 }

 for (index = 0; index < arrayP->numProcs; index++)
 {
  if (arrayP->pgprocnos[index] == proc->pgprocno)
  {

   memmove(&arrayP->pgprocnos[index], &arrayP->pgprocnos[index + 1],
     (arrayP->numProcs - index - 1) * sizeof(int));
   arrayP->pgprocnos[arrayP->numProcs - 1] = -1;
   arrayP->numProcs--;
   LWLockRelease(ProcArrayLock);
   return;
  }
 }


 LWLockRelease(ProcArrayLock);

 elog(LOG, "failed to find proc %p in ProcArray", proc);
}
