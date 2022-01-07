
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_21__ {int flags; int xmin; } ;
typedef TYPE_4__ TwoPhasePredicateXactRecord ;
struct TYPE_20__ {int lockRecord; int xactRecord; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_3__ data; } ;
typedef TYPE_5__ TwoPhasePredicateRecord ;
struct TYPE_23__ {int target; } ;
typedef TYPE_6__ TwoPhasePredicateLockRecord ;
typedef void* TransactionId ;
struct TYPE_19__ {void* lastCommitBeforeSnapshot; } ;
struct TYPE_18__ {scalar_t__ localTransactionId; int backendId; } ;
struct TYPE_26__ {int xmin; int flags; int inConflicts; int outConflicts; void* topXid; int finishedLink; int predicateLocks; int possibleUnsafeConflicts; TYPE_2__ SeqNo; int finishedBefore; int commitSeqNo; void* prepareSeqNo; scalar_t__ pid; TYPE_1__ vxid; } ;
struct TYPE_25__ {TYPE_9__* myXact; } ;
struct TYPE_24__ {void* xid; } ;
struct TYPE_17__ {scalar_t__ WritableSxactCount; int SxactGlobalXminCount; int SxactGlobalXmin; } ;
typedef TYPE_7__ SERIALIZABLEXIDTAG ;
typedef TYPE_8__ SERIALIZABLEXID ;
typedef TYPE_9__ SERIALIZABLEXACT ;
typedef scalar_t__ LocalTransactionId ;


 int Assert (int) ;
 TYPE_9__* CreatePredXact () ;
 int CreatePredicateLock (int *,int,TYPE_9__*) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int InvalidBackendId ;
 int InvalidSerCommitSeqNo ;
 TYPE_9__* InvalidSerializableXact ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 scalar_t__ MaxBackends ;
 int OldSerXidSetActiveSerXmin (int ) ;
 TYPE_13__* PredXact ;
 int PredicateLockTargetTagHashCode (int *) ;
 void* RecoverySerCommitSeqNo ;
 int SHMQueueElemInit (int *) ;
 int SHMQueueInit (int *) ;
 int SXACT_FLAG_SUMMARY_CONFLICT_IN ;
 int SXACT_FLAG_SUMMARY_CONFLICT_OUT ;
 int SerializableXactHashLock ;
 int SerializableXidHash ;
 int SxactIsPrepared (TYPE_9__*) ;
 int SxactIsReadOnly (TYPE_9__*) ;
 scalar_t__ TWOPHASEPREDICATERECORD_LOCK ;
 scalar_t__ TWOPHASEPREDICATERECORD_XACT ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdFollows (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ hash_search (int ,TYPE_7__*,int ,int*) ;
 scalar_t__ max_prepared_xacts ;

void
predicatelock_twophase_recover(TransactionId xid, uint16 info,
          void *recdata, uint32 len)
{
 TwoPhasePredicateRecord *record;

 Assert(len == sizeof(TwoPhasePredicateRecord));

 record = (TwoPhasePredicateRecord *) recdata;

 Assert((record->type == TWOPHASEPREDICATERECORD_XACT) ||
     (record->type == TWOPHASEPREDICATERECORD_LOCK));

 if (record->type == TWOPHASEPREDICATERECORD_XACT)
 {

  TwoPhasePredicateXactRecord *xactRecord;
  SERIALIZABLEXACT *sxact;
  SERIALIZABLEXID *sxid;
  SERIALIZABLEXIDTAG sxidtag;
  bool found;

  xactRecord = (TwoPhasePredicateXactRecord *) &record->data.xactRecord;

  LWLockAcquire(SerializableXactHashLock, LW_EXCLUSIVE);
  sxact = CreatePredXact();
  if (!sxact)
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of shared memory")));


  sxact->vxid.backendId = InvalidBackendId;
  sxact->vxid.localTransactionId = (LocalTransactionId) xid;
  sxact->pid = 0;


  sxact->prepareSeqNo = RecoverySerCommitSeqNo;
  sxact->commitSeqNo = InvalidSerCommitSeqNo;
  sxact->finishedBefore = InvalidTransactionId;

  sxact->SeqNo.lastCommitBeforeSnapshot = RecoverySerCommitSeqNo;






  SHMQueueInit(&(sxact->possibleUnsafeConflicts));

  SHMQueueInit(&(sxact->predicateLocks));
  SHMQueueElemInit(&(sxact->finishedLink));

  sxact->topXid = xid;
  sxact->xmin = xactRecord->xmin;
  sxact->flags = xactRecord->flags;
  Assert(SxactIsPrepared(sxact));
  if (!SxactIsReadOnly(sxact))
  {
   ++(PredXact->WritableSxactCount);
   Assert(PredXact->WritableSxactCount <=
       (MaxBackends + max_prepared_xacts));
  }






  SHMQueueInit(&(sxact->outConflicts));
  SHMQueueInit(&(sxact->inConflicts));
  sxact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_IN;
  sxact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;


  sxidtag.xid = xid;
  sxid = (SERIALIZABLEXID *) hash_search(SerializableXidHash,
              &sxidtag,
              HASH_ENTER, &found);
  Assert(sxid != ((void*)0));
  Assert(!found);
  sxid->myXact = (SERIALIZABLEXACT *) sxact;
  if ((!TransactionIdIsValid(PredXact->SxactGlobalXmin)) ||
   (TransactionIdFollows(PredXact->SxactGlobalXmin, sxact->xmin)))
  {
   PredXact->SxactGlobalXmin = sxact->xmin;
   PredXact->SxactGlobalXminCount = 1;
   OldSerXidSetActiveSerXmin(sxact->xmin);
  }
  else if (TransactionIdEquals(sxact->xmin, PredXact->SxactGlobalXmin))
  {
   Assert(PredXact->SxactGlobalXminCount > 0);
   PredXact->SxactGlobalXminCount++;
  }

  LWLockRelease(SerializableXactHashLock);
 }
 else if (record->type == TWOPHASEPREDICATERECORD_LOCK)
 {

  TwoPhasePredicateLockRecord *lockRecord;
  SERIALIZABLEXID *sxid;
  SERIALIZABLEXACT *sxact;
  SERIALIZABLEXIDTAG sxidtag;
  uint32 targettaghash;

  lockRecord = (TwoPhasePredicateLockRecord *) &record->data.lockRecord;
  targettaghash = PredicateLockTargetTagHashCode(&lockRecord->target);

  LWLockAcquire(SerializableXactHashLock, LW_SHARED);
  sxidtag.xid = xid;
  sxid = (SERIALIZABLEXID *)
   hash_search(SerializableXidHash, &sxidtag, HASH_FIND, ((void*)0));
  LWLockRelease(SerializableXactHashLock);

  Assert(sxid != ((void*)0));
  sxact = sxid->myXact;
  Assert(sxact != InvalidSerializableXact);

  CreatePredicateLock(&lockRecord->target, targettaghash, sxact);
 }
}
