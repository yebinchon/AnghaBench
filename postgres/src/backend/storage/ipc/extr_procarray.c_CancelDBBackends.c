
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_8__ {int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
struct TYPE_10__ {scalar_t__ databaseId; int recoveryConflictPending; scalar_t__ pid; } ;
struct TYPE_9__ {int numProcs; int* pgprocnos; } ;
typedef int ProcSignalReason ;
typedef TYPE_2__ ProcArrayStruct ;
typedef TYPE_3__ PGPROC ;
typedef scalar_t__ Oid ;


 int GET_VXID_FROM_PGPROC (TYPE_1__,TYPE_3__) ;
 scalar_t__ InvalidOid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 int SendProcSignal (scalar_t__,int ,int ) ;
 TYPE_3__* allProcs ;
 TYPE_2__* procArray ;

void
CancelDBBackends(Oid databaseid, ProcSignalReason sigmode, bool conflictPending)
{
 ProcArrayStruct *arrayP = procArray;
 int index;
 pid_t pid = 0;


 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];

  if (databaseid == InvalidOid || proc->databaseId == databaseid)
  {
   VirtualTransactionId procvxid;

   GET_VXID_FROM_PGPROC(procvxid, *proc);

   proc->recoveryConflictPending = conflictPending;
   pid = proc->pid;
   if (pid != 0)
   {




    (void) SendProcSignal(pid, sigmode, procvxid.backendId);
   }
  }
 }

 LWLockRelease(ProcArrayLock);
}
