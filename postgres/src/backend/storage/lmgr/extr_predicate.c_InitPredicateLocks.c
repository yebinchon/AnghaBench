
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int info ;
struct TYPE_12__ {scalar_t__ lastCommitBeforeSnapshot; } ;
struct TYPE_17__ {scalar_t__ pid; int flags; void* xmin; void* finishedBefore; void* topXid; int possibleUnsafeConflicts; int finishedLink; int predicateLocks; int inConflicts; int outConflicts; TYPE_2__ SeqNo; scalar_t__ commitSeqNo; scalar_t__ prepareSeqNo; int vxid; } ;
struct TYPE_16__ {TYPE_8__* OldCommittedSxact; TYPE_4__* element; int availableList; scalar_t__ HavePartialClearedThrough; scalar_t__ CanPartialClearThrough; scalar_t__ LastSxactCommitSeqNo; scalar_t__ WritableSxactCount; scalar_t__ SxactGlobalXminCount; void* SxactGlobalXmin; int activeList; } ;
struct TYPE_15__ {TYPE_4__* element; int availableList; } ;
struct TYPE_11__ {int predicateLockListLock; } ;
struct TYPE_14__ {int outLink; int link; TYPE_1__ sxact; } ;
struct TYPE_13__ {int keysize; int entrysize; void* num_partitions; int hash; } ;
typedef int Size ;
typedef int SHM_QUEUE ;
typedef int SERIALIZABLEXIDTAG ;
typedef int SERIALIZABLEXID ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int PREDICATELOCKTARGET ;
typedef int PREDICATELOCKTAG ;
typedef int PREDICATELOCK ;
typedef TYPE_3__ HASHCTL ;


 int Assert (int) ;
 TYPE_8__* CreatePredXact () ;
 int * FinishedSerializableTransactions ;
 scalar_t__ FirstNormalSerCommitSeqNo ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FIXED_SIZE ;
 int HASH_FUNCTION ;
 int HASH_PARTITION ;
 void* InvalidTransactionId ;
 int IsUnderPostmaster ;
 int LWLockInitialize (int *,int ) ;
 int LWTRANCHE_SXACT ;
 long MaxBackends ;
 int MemSet (TYPE_3__*,int ,int) ;
 long NPREDICATELOCKTARGETENTS () ;
 void* NUM_PREDICATELOCK_PARTITIONS ;
 TYPE_8__* OldCommittedSxact ;
 int OldSerXidInit () ;
 TYPE_7__* PredXact ;
 int PredXactListDataSize ;
 int PredXactListElementDataSize ;
 void* PredicateLockHash ;
 int PredicateLockHashPartitionLock (int ) ;
 void* PredicateLockTargetHash ;
 int PredicateLockTargetTagHashCode (int *) ;
 int RWConflictDataSize ;
 TYPE_6__* RWConflictPool ;
 int RWConflictPoolHeaderDataSize ;
 int SHMQueueInit (int *) ;
 int SHMQueueInsertBefore (int *,int *) ;
 int SXACT_FLAG_COMMITTED ;
 int ScratchPartitionLock ;
 int ScratchTargetTag ;
 int ScratchTargetTagHash ;
 void* SerializableXidHash ;
 int SetInvalidVirtualTransactionId (int ) ;
 void* ShmemAlloc (int ) ;
 void* ShmemInitHash (char*,long,long,TYPE_3__*,int) ;
 void* ShmemInitStruct (char*,int,int*) ;
 int hash_search (void*,int *,int ,int*) ;
 long max_prepared_xacts ;
 int memset (TYPE_4__*,int ,int ) ;
 int mul_size (int ,int ) ;
 int predicatelock_hash ;

void
InitPredicateLocks(void)
{
 HASHCTL info;
 long max_table_size;
 Size requestSize;
 bool found;


 Assert(!IsUnderPostmaster);






 max_table_size = NPREDICATELOCKTARGETENTS();





 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(PREDICATELOCKTARGETTAG);
 info.entrysize = sizeof(PREDICATELOCKTARGET);
 info.num_partitions = NUM_PREDICATELOCK_PARTITIONS;

 PredicateLockTargetHash = ShmemInitHash("PREDICATELOCKTARGET hash",
           max_table_size,
           max_table_size,
           &info,
           HASH_ELEM | HASH_BLOBS |
           HASH_PARTITION | HASH_FIXED_SIZE);







 if (!IsUnderPostmaster)
 {
  (void) hash_search(PredicateLockTargetHash, &ScratchTargetTag,
         HASH_ENTER, &found);
  Assert(!found);
 }


 ScratchTargetTagHash = PredicateLockTargetTagHashCode(&ScratchTargetTag);
 ScratchPartitionLock = PredicateLockHashPartitionLock(ScratchTargetTagHash);





 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(PREDICATELOCKTAG);
 info.entrysize = sizeof(PREDICATELOCK);
 info.hash = predicatelock_hash;
 info.num_partitions = NUM_PREDICATELOCK_PARTITIONS;


 max_table_size *= 2;

 PredicateLockHash = ShmemInitHash("PREDICATELOCK hash",
           max_table_size,
           max_table_size,
           &info,
           HASH_ELEM | HASH_FUNCTION |
           HASH_PARTITION | HASH_FIXED_SIZE);





 max_table_size = (MaxBackends + max_prepared_xacts);
 max_table_size *= 10;

 PredXact = ShmemInitStruct("PredXactList",
          PredXactListDataSize,
          &found);
 Assert(found == IsUnderPostmaster);
 if (!found)
 {
  int i;

  SHMQueueInit(&PredXact->availableList);
  SHMQueueInit(&PredXact->activeList);
  PredXact->SxactGlobalXmin = InvalidTransactionId;
  PredXact->SxactGlobalXminCount = 0;
  PredXact->WritableSxactCount = 0;
  PredXact->LastSxactCommitSeqNo = FirstNormalSerCommitSeqNo - 1;
  PredXact->CanPartialClearThrough = 0;
  PredXact->HavePartialClearedThrough = 0;
  requestSize = mul_size((Size) max_table_size,
          PredXactListElementDataSize);
  PredXact->element = ShmemAlloc(requestSize);

  memset(PredXact->element, 0, requestSize);
  for (i = 0; i < max_table_size; i++)
  {
   LWLockInitialize(&PredXact->element[i].sxact.predicateLockListLock,
        LWTRANCHE_SXACT);
   SHMQueueInsertBefore(&(PredXact->availableList),
         &(PredXact->element[i].link));
  }
  PredXact->OldCommittedSxact = CreatePredXact();
  SetInvalidVirtualTransactionId(PredXact->OldCommittedSxact->vxid);
  PredXact->OldCommittedSxact->prepareSeqNo = 0;
  PredXact->OldCommittedSxact->commitSeqNo = 0;
  PredXact->OldCommittedSxact->SeqNo.lastCommitBeforeSnapshot = 0;
  SHMQueueInit(&PredXact->OldCommittedSxact->outConflicts);
  SHMQueueInit(&PredXact->OldCommittedSxact->inConflicts);
  SHMQueueInit(&PredXact->OldCommittedSxact->predicateLocks);
  SHMQueueInit(&PredXact->OldCommittedSxact->finishedLink);
  SHMQueueInit(&PredXact->OldCommittedSxact->possibleUnsafeConflicts);
  PredXact->OldCommittedSxact->topXid = InvalidTransactionId;
  PredXact->OldCommittedSxact->finishedBefore = InvalidTransactionId;
  PredXact->OldCommittedSxact->xmin = InvalidTransactionId;
  PredXact->OldCommittedSxact->flags = SXACT_FLAG_COMMITTED;
  PredXact->OldCommittedSxact->pid = 0;
 }

 OldCommittedSxact = PredXact->OldCommittedSxact;





 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(SERIALIZABLEXIDTAG);
 info.entrysize = sizeof(SERIALIZABLEXID);

 SerializableXidHash = ShmemInitHash("SERIALIZABLEXID hash",
          max_table_size,
          max_table_size,
          &info,
          HASH_ELEM | HASH_BLOBS |
          HASH_FIXED_SIZE);
 max_table_size *= 5;

 RWConflictPool = ShmemInitStruct("RWConflictPool",
          RWConflictPoolHeaderDataSize,
          &found);
 Assert(found == IsUnderPostmaster);
 if (!found)
 {
  int i;

  SHMQueueInit(&RWConflictPool->availableList);
  requestSize = mul_size((Size) max_table_size,
          RWConflictDataSize);
  RWConflictPool->element = ShmemAlloc(requestSize);

  memset(RWConflictPool->element, 0, requestSize);
  for (i = 0; i < max_table_size; i++)
  {
   SHMQueueInsertBefore(&(RWConflictPool->availableList),
         &(RWConflictPool->element[i].outLink));
  }
 }





 FinishedSerializableTransactions = (SHM_QUEUE *)
  ShmemInitStruct("FinishedSerializableTransactions",
      sizeof(SHM_QUEUE),
      &found);
 Assert(found == IsUnderPostmaster);
 if (!found)
  SHMQueueInit(FinishedSerializableTransactions);





 OldSerXidInit();
}
