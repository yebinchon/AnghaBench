
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int delayChkpt; scalar_t__ vacuumFlags; void* xmin; void* xid; } ;
struct TYPE_7__ {TYPE_4__* allPgXact; int spins_per_delay; } ;
struct TYPE_6__ {scalar_t__ pid; size_t pgprocno; int fpVXIDLock; int lwWaiting; int sem; int lockGroupMembers; int * lockGroupLeader; int procLatch; int * myProcLocks; int * waitProcLock; int * waitLock; scalar_t__ lwWaitMode; int isBackgroundWorker; void* tempNamespaceId; void* roleId; void* databaseId; int backendId; void* fpLocalTransactionId; void* lxid; int waitStatus; int links; } ;
typedef TYPE_1__ PGPROC ;


 int Assert (int ) ;
 int AuxiliaryProcKill ;
 TYPE_1__* AuxiliaryProcs ;
 int ERROR ;
 int FATAL ;
 int Int32GetDatum (int) ;
 int InvalidBackendId ;
 void* InvalidLocalTransactionId ;
 void* InvalidOid ;
 void* InvalidTransactionId ;
 int IsBackgroundWorker ;
 TYPE_4__* MyPgXact ;
 TYPE_1__* MyProc ;
 scalar_t__ MyProcPid ;
 int NUM_AUXILIARY_PROCS ;
 int NUM_LOCK_PARTITIONS ;
 int OwnLatch (int *) ;
 int PANIC ;
 int PGSemaphoreReset (int ) ;
 TYPE_2__* ProcGlobal ;
 int ProcStructLock ;
 int SHMQueueElemInit (int *) ;
 int SHMQueueEmpty (int *) ;
 int STATUS_OK ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;
 int SwitchToSharedLatch () ;
 int dlist_is_empty (int *) ;
 int elog (int ,char*) ;
 int on_shmem_exit (int ,int ) ;
 int set_spins_per_delay (int ) ;

void
InitAuxiliaryProcess(void)
{
 PGPROC *auxproc;
 int proctype;





 if (ProcGlobal == ((void*)0) || AuxiliaryProcs == ((void*)0))
  elog(PANIC, "proc header uninitialized");

 if (MyProc != ((void*)0))
  elog(ERROR, "you already exist");
 SpinLockAcquire(ProcStructLock);

 set_spins_per_delay(ProcGlobal->spins_per_delay);




 for (proctype = 0; proctype < NUM_AUXILIARY_PROCS; proctype++)
 {
  auxproc = &AuxiliaryProcs[proctype];
  if (auxproc->pid == 0)
   break;
 }
 if (proctype >= NUM_AUXILIARY_PROCS)
 {
  SpinLockRelease(ProcStructLock);
  elog(FATAL, "all AuxiliaryProcs are in use");
 }



 ((volatile PGPROC *) auxproc)->pid = MyProcPid;

 MyProc = auxproc;
 MyPgXact = &ProcGlobal->allPgXact[auxproc->pgprocno];

 SpinLockRelease(ProcStructLock);





 SHMQueueElemInit(&(MyProc->links));
 MyProc->waitStatus = STATUS_OK;
 MyProc->lxid = InvalidLocalTransactionId;
 MyProc->fpVXIDLock = 0;
 MyProc->fpLocalTransactionId = InvalidLocalTransactionId;
 MyPgXact->xid = InvalidTransactionId;
 MyPgXact->xmin = InvalidTransactionId;
 MyProc->backendId = InvalidBackendId;
 MyProc->databaseId = InvalidOid;
 MyProc->roleId = InvalidOid;
 MyProc->tempNamespaceId = InvalidOid;
 MyProc->isBackgroundWorker = IsBackgroundWorker;
 MyPgXact->delayChkpt = 0;
 MyPgXact->vacuumFlags = 0;
 MyProc->lwWaiting = 0;
 MyProc->lwWaitMode = 0;
 MyProc->waitLock = ((void*)0);
 MyProc->waitProcLock = ((void*)0);
 OwnLatch(&MyProc->procLatch);
 SwitchToSharedLatch();


 Assert(MyProc->lockGroupLeader == ((void*)0));
 Assert(dlist_is_empty(&MyProc->lockGroupMembers));






 PGSemaphoreReset(MyProc->sem);




 on_shmem_exit(AuxiliaryProcKill, Int32GetDatum(proctype));
}
