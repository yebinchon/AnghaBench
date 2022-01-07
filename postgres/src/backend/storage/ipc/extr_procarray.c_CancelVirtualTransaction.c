
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_9__ {scalar_t__ localTransactionId; int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
struct TYPE_11__ {int recoveryConflictPending; scalar_t__ pid; } ;
struct TYPE_10__ {int numProcs; int* pgprocnos; } ;
typedef int ProcSignalReason ;
typedef TYPE_2__ ProcArrayStruct ;
typedef TYPE_3__ PGPROC ;


 int GET_VXID_FROM_PGPROC (TYPE_1__,TYPE_3__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArrayLock ;
 int SendProcSignal (scalar_t__,int ,int ) ;
 TYPE_3__* allProcs ;
 TYPE_2__* procArray ;

pid_t
CancelVirtualTransaction(VirtualTransactionId vxid, ProcSignalReason sigmode)
{
 ProcArrayStruct *arrayP = procArray;
 int index;
 pid_t pid = 0;

 LWLockAcquire(ProcArrayLock, LW_SHARED);

 for (index = 0; index < arrayP->numProcs; index++)
 {
  int pgprocno = arrayP->pgprocnos[index];
  PGPROC *proc = &allProcs[pgprocno];
  VirtualTransactionId procvxid;

  GET_VXID_FROM_PGPROC(procvxid, *proc);

  if (procvxid.backendId == vxid.backendId &&
   procvxid.localTransactionId == vxid.localTransactionId)
  {
   proc->recoveryConflictPending = 1;
   pid = proc->pid;
   if (pid != 0)
   {




    (void) SendProcSignal(pid, sigmode, vxid.backendId);
   }
   break;
  }
 }

 LWLockRelease(ProcArrayLock);

 return pid;
}
