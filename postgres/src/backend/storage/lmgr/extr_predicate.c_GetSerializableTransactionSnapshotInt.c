
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int VirtualTransactionId ;
struct TYPE_22__ {int lastCommitBeforeSnapshot; } ;
struct TYPE_24__ {int flags; int finishedLink; int predicateLocks; int pid; int xmin; int finishedBefore; int topXid; int possibleUnsafeConflicts; int inConflicts; int outConflicts; void* commitSeqNo; void* prepareSeqNo; TYPE_1__ SeqNo; int vxid; } ;
struct TYPE_23__ {int xmin; } ;
struct TYPE_21__ {scalar_t__ WritableSxactCount; int SxactGlobalXminCount; int LastSxactCommitSeqNo; int SxactGlobalXmin; } ;
typedef TYPE_2__* Snapshot ;
typedef TYPE_3__ SERIALIZABLEXACT ;
typedef int PGPROC ;


 int Assert (int) ;
 int CreateLocalPredicateLockHash () ;
 TYPE_3__* CreatePredXact () ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_3__* FirstPredXact () ;
 int GET_VXID_FROM_PGPROC (int ,int ) ;
 TYPE_2__* GetSnapshotData (TYPE_2__*) ;
 int GetTopTransactionIdIfAny () ;
 void* InvalidSerCommitSeqNo ;
 TYPE_3__* InvalidSerializableXact ;
 int InvalidTransactionId ;
 scalar_t__ IsInParallelMode () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MaxBackends ;
 int * MyProc ;
 int MyProcPid ;
 TYPE_3__* MySerializableXact ;
 int MyXactDidWrite ;
 TYPE_3__* NextPredXact (TYPE_3__*) ;
 int OldSerXidSetActiveSerXmin (int ) ;
 TYPE_10__* PredXact ;
 int ProcArrayInstallImportedXmin (int ,int *) ;
 int RecoveryInProgress () ;
 int ReleasePredXact (TYPE_3__*) ;
 int SHMQueueElemInit (int *) ;
 int SHMQueueInit (int *) ;
 int SXACT_FLAG_READ_ONLY ;
 int SerializableXactHashLock ;
 int SetPossibleUnsafeConflict (TYPE_3__*,TYPE_3__*) ;
 int SummarizeOldestCommittedSxact () ;
 int SxactIsCommitted (TYPE_3__*) ;
 int SxactIsDoomed (TYPE_3__*) ;
 int SxactIsReadOnly (TYPE_3__*) ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 int TransactionIdFollows (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ XactReadOnly ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;
 scalar_t__ max_prepared_xacts ;

__attribute__((used)) static Snapshot
GetSerializableTransactionSnapshotInt(Snapshot snapshot,
           VirtualTransactionId *sourcevxid,
           int sourcepid)
{
 PGPROC *proc;
 VirtualTransactionId vxid;
 SERIALIZABLEXACT *sxact,
      *othersxact;


 Assert(MySerializableXact == InvalidSerializableXact);

 Assert(!RecoveryInProgress());






 if (IsInParallelMode())
  elog(ERROR, "cannot establish serializable snapshot during a parallel operation");

 proc = MyProc;
 Assert(proc != ((void*)0));
 GET_VXID_FROM_PGPROC(vxid, *proc);
 LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);
 do
 {
  sxact = CreatePredXact();

  if (!sxact)
  {
   LWLockRelease(SerializableXactHashLock);
   SummarizeOldestCommittedSxact();
   LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);
  }
 } while (!sxact);


 if (!sourcevxid)
  snapshot = GetSnapshotData(snapshot);
 else if (!ProcArrayInstallImportedXmin(snapshot->xmin, sourcevxid))
 {
  ReleasePredXact(sxact);
  LWLockRelease(SerializableXactHashLock);
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not import the requested snapshot"),
     errdetail("The source process with PID %d is not running anymore.",
         sourcepid)));
 }
 if (XactReadOnly && PredXact->WritableSxactCount == 0)
 {
  ReleasePredXact(sxact);
  LWLockRelease(SerializableXactHashLock);
  return snapshot;
 }


 if (!TransactionIdIsValid(PredXact->SxactGlobalXmin))
 {
  Assert(PredXact->SxactGlobalXminCount == 0);
  PredXact->SxactGlobalXmin = snapshot->xmin;
  PredXact->SxactGlobalXminCount = 1;
  OldSerXidSetActiveSerXmin(snapshot->xmin);
 }
 else if (TransactionIdEquals(snapshot->xmin, PredXact->SxactGlobalXmin))
 {
  Assert(PredXact->SxactGlobalXminCount > 0);
  PredXact->SxactGlobalXminCount++;
 }
 else
 {
  Assert(TransactionIdFollows(snapshot->xmin, PredXact->SxactGlobalXmin));
 }


 sxact->vxid = vxid;
 sxact->SeqNo.lastCommitBeforeSnapshot = PredXact->LastSxactCommitSeqNo;
 sxact->prepareSeqNo = InvalidSerCommitSeqNo;
 sxact->commitSeqNo = InvalidSerCommitSeqNo;
 SHMQueueInit(&(sxact->outConflicts));
 SHMQueueInit(&(sxact->inConflicts));
 SHMQueueInit(&(sxact->possibleUnsafeConflicts));
 sxact->topXid = GetTopTransactionIdIfAny();
 sxact->finishedBefore = InvalidTransactionId;
 sxact->xmin = snapshot->xmin;
 sxact->pid = MyProcPid;
 SHMQueueInit(&(sxact->predicateLocks));
 SHMQueueElemInit(&(sxact->finishedLink));
 sxact->flags = 0;
 if (XactReadOnly)
 {
  sxact->flags |= SXACT_FLAG_READ_ONLY;







  for (othersxact = FirstPredXact();
    othersxact != ((void*)0);
    othersxact = NextPredXact(othersxact))
  {
   if (!SxactIsCommitted(othersxact)
    && !SxactIsDoomed(othersxact)
    && !SxactIsReadOnly(othersxact))
   {
    SetPossibleUnsafeConflict(sxact, othersxact);
   }
  }
 }
 else
 {
  ++(PredXact->WritableSxactCount);
  Assert(PredXact->WritableSxactCount <=
      (MaxBackends + max_prepared_xacts));
 }

 MySerializableXact = sxact;
 MyXactDidWrite = 0;

 LWLockRelease(SerializableXactHashLock);

 CreateLocalPredicateLockHash();

 return snapshot;
}
