
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* TransactionId ;
typedef int TimestampTz ;
struct TYPE_11__ {TYPE_1__* allPgXact; TYPE_2__* allProcs; } ;
struct TYPE_10__ {size_t pgprocno; int valid; int inredo; int gid; int locking_backend; void* owner; void* xid; int prepared_at; } ;
struct TYPE_9__ {size_t pgprocno; int isBackgroundWorker; int lwWaiting; int * myProcLocks; int * waitProcLock; int * waitLock; scalar_t__ lwWaitMode; int tempNamespaceId; void* roleId; void* databaseId; int backendId; scalar_t__ pid; scalar_t__ lxid; int waitStatus; int links; } ;
struct TYPE_8__ {int delayChkpt; int overflowed; scalar_t__ nxids; scalar_t__ vacuumFlags; int xmin; void* xid; } ;
typedef TYPE_1__ PGXACT ;
typedef TYPE_2__ PGPROC ;
typedef void* Oid ;
typedef scalar_t__ LocalTransactionId ;
typedef TYPE_3__* GlobalTransaction ;


 int Assert (int ) ;
 int InvalidBackendId ;
 int InvalidOid ;
 int InvalidTransactionId ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int MemSet (TYPE_2__*,int ,int) ;
 int MyBackendId ;
 TYPE_3__* MyLockedGxact ;
 int NUM_LOCK_PARTITIONS ;
 TYPE_4__* ProcGlobal ;
 int SHMQueueElemInit (int *) ;
 int SHMQueueInit (int *) ;
 int STATUS_OK ;
 int TwoPhaseStateLock ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void
MarkAsPreparingGuts(GlobalTransaction gxact, TransactionId xid, const char *gid,
     TimestampTz prepared_at, Oid owner, Oid databaseid)
{
 PGPROC *proc;
 PGXACT *pgxact;
 int i;

 Assert(LWLockHeldByMeInMode(TwoPhaseStateLock, LW_EXCLUSIVE));

 Assert(gxact != ((void*)0));
 proc = &ProcGlobal->allProcs[gxact->pgprocno];
 pgxact = &ProcGlobal->allPgXact[gxact->pgprocno];


 MemSet(proc, 0, sizeof(PGPROC));
 proc->pgprocno = gxact->pgprocno;
 SHMQueueElemInit(&(proc->links));
 proc->waitStatus = STATUS_OK;

 proc->lxid = (LocalTransactionId) xid;
 pgxact->xid = xid;
 pgxact->xmin = InvalidTransactionId;
 pgxact->delayChkpt = 0;
 pgxact->vacuumFlags = 0;
 proc->pid = 0;
 proc->backendId = InvalidBackendId;
 proc->databaseId = databaseid;
 proc->roleId = owner;
 proc->tempNamespaceId = InvalidOid;
 proc->isBackgroundWorker = 0;
 proc->lwWaiting = 0;
 proc->lwWaitMode = 0;
 proc->waitLock = ((void*)0);
 proc->waitProcLock = ((void*)0);
 for (i = 0; i < NUM_LOCK_PARTITIONS; i++)
  SHMQueueInit(&(proc->myProcLocks[i]));

 pgxact->overflowed = 0;
 pgxact->nxids = 0;

 gxact->prepared_at = prepared_at;
 gxact->xid = xid;
 gxact->owner = owner;
 gxact->locking_backend = MyBackendId;
 gxact->valid = 0;
 gxact->inredo = 0;
 strcpy(gxact->gid, gid);





 MyLockedGxact = gxact;
}
