
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_32__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_11__ ;


typedef size_t uint32 ;
typedef int localtag ;
struct TYPE_44__ {size_t hashcode; scalar_t__ nLocks; int holdsStrongLockCount; int lockCleared; int numLockOwners; int maxLockOwners; TYPE_4__* lock; TYPE_1__* proclock; int * lockOwners; } ;
struct TYPE_41__ {size_t locktag_lockmethodid; scalar_t__ locktag_type; int locktag_field2; int locktag_field1; int locktag_field4; int locktag_field3; } ;
struct TYPE_43__ {size_t mode; TYPE_3__ lock; } ;
struct TYPE_42__ {int waitMask; scalar_t__ nRequested; scalar_t__* requested; scalar_t__ nGranted; } ;
struct TYPE_40__ {scalar_t__* count; } ;
struct TYPE_39__ {size_t numLockModes; int* conflictTab; int * lockModeNames; } ;
struct TYPE_37__ {TYPE_4__* myLock; } ;
struct TYPE_38__ {int holdMask; TYPE_14__ tag; int procLink; int lockLink; } ;
struct TYPE_36__ {int heldLocks; int backendLock; } ;
typedef int * ResourceOwner ;
typedef TYPE_1__ PROCLOCK ;
typedef TYPE_2__* LockMethod ;
typedef int LockAcquireResult ;
typedef int LWLock ;
typedef TYPE_3__ LOCKTAG ;
typedef size_t LOCKMODE ;
typedef size_t LOCKMETHODID ;
typedef TYPE_4__ LOCK ;
typedef TYPE_5__ LOCALLOCKTAG ;
typedef int LOCALLOCKOWNER ;
typedef TYPE_6__ LOCALLOCK ;


 int AbortStrongLockAcquire () ;
 size_t AccessExclusiveLock ;
 int Assert (int) ;
 int BeginStrongLockAcquire (TYPE_6__*,size_t) ;
 scalar_t__ ConflictsWithRelationFastPath (TYPE_3__ const*,size_t) ;
 int * CurrentResourceOwner ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 scalar_t__ EligibleForRelationFastPath (TYPE_3__ const*,size_t) ;
 scalar_t__ FP_LOCK_SLOTS_PER_BACKEND ;
 int FastPathGrantRelationLock (int ,size_t) ;
 scalar_t__ FastPathLocalUseCount ;
 size_t FastPathStrongLockHashPartition (size_t) ;
 TYPE_32__* FastPathStrongRelationLocks ;
 int FastPathTransferRelationLocks (TYPE_2__*,TYPE_3__ const*,size_t) ;
 int FinishStrongLockAcquire () ;
 int GrantLock (TYPE_4__*,TYPE_1__*,size_t) ;
 int GrantLockLocal (TYPE_6__*,int *) ;
 int HASH_ENTER ;
 int HASH_REMOVE ;
 int InRecovery ;
 int LOCKACQUIRE_ALREADY_CLEAR ;
 int LOCKACQUIRE_ALREADY_HELD ;
 int LOCKACQUIRE_NOT_AVAIL ;
 int LOCKACQUIRE_OK ;
 int LOCKBIT_ON (size_t) ;
 scalar_t__ LOCKTAG_OBJECT ;
 scalar_t__ LOCKTAG_RELATION ;
 scalar_t__ LOCK_DEBUG_ENABLED (TYPE_3__ const*) ;
 int LOCK_PRINT (char*,TYPE_4__*,size_t) ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LockCheckConflicts (TYPE_2__*,size_t,TYPE_4__*,TYPE_1__*) ;
 int * LockHashPartitionLock (size_t) ;
 int LockMethodLocalHash ;
 int LockMethodProcLockHash ;
 TYPE_2__** LockMethods ;
 size_t LockTagHashCode (TYPE_3__*) ;
 int LogAccessExclusiveLock (int ,int ) ;
 int LogAccessExclusiveLockPrepare () ;
 int MemSet (TYPE_5__*,int ,int) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_11__* MyProc ;
 int PANIC ;
 int PROCLOCK_PRINT (char*,TYPE_1__*) ;
 size_t ProcLockHashCode (TYPE_14__*,size_t) ;
 scalar_t__ RecoveryInProgress () ;
 int RemoveLocalLock (TYPE_6__*) ;
 size_t RowExclusiveLock ;
 int SHMQueueDelete (int *) ;
 int STATUS_FOUND ;
 int STATUS_OK ;
 TYPE_1__* SetupLockInTable (TYPE_2__*,TYPE_11__*,TYPE_3__ const*,size_t,size_t) ;
 int TRACE_POSTGRESQL_LOCK_WAIT_DONE (int ,int ,int ,int ,scalar_t__,size_t) ;
 int TRACE_POSTGRESQL_LOCK_WAIT_START (int ,int ,int ,int ,scalar_t__,size_t) ;
 int TopMemoryContext ;
 int WaitOnLock (TYPE_6__*,int *) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;
 int hash_search_with_hash_value (int ,void*,size_t,int ,int *) ;
 size_t lengthof (TYPE_2__**) ;
 scalar_t__ repalloc (int *,int) ;

LockAcquireResult
LockAcquireExtended(const LOCKTAG *locktag,
     LOCKMODE lockmode,
     bool sessionLock,
     bool dontWait,
     bool reportMemoryError,
     LOCALLOCK **locallockp)
{
 LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
 LockMethod lockMethodTable;
 LOCALLOCKTAG localtag;
 LOCALLOCK *locallock;
 LOCK *lock;
 PROCLOCK *proclock;
 bool found;
 ResourceOwner owner;
 uint32 hashcode;
 LWLock *partitionLock;
 int status;
 bool log_lock = 0;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);
 lockMethodTable = LockMethods[lockmethodid];
 if (lockmode <= 0 || lockmode > lockMethodTable->numLockModes)
  elog(ERROR, "unrecognized lock mode: %d", lockmode);

 if (RecoveryInProgress() && !InRecovery &&
  (locktag->locktag_type == LOCKTAG_OBJECT ||
   locktag->locktag_type == LOCKTAG_RELATION) &&
  lockmode > RowExclusiveLock)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot acquire lock mode %s on database objects while recovery is in progress",
      lockMethodTable->lockModeNames[lockmode]),
     errhint("Only RowExclusiveLock or less can be acquired on database objects during recovery.")));
 if (sessionLock)
  owner = ((void*)0);
 else
  owner = CurrentResourceOwner;




 MemSet(&localtag, 0, sizeof(localtag));
 localtag.lock = *locktag;
 localtag.mode = lockmode;

 locallock = (LOCALLOCK *) hash_search(LockMethodLocalHash,
            (void *) &localtag,
            HASH_ENTER, &found);




 if (!found)
 {
  locallock->lock = ((void*)0);
  locallock->proclock = ((void*)0);
  locallock->hashcode = LockTagHashCode(&(localtag.lock));
  locallock->nLocks = 0;
  locallock->holdsStrongLockCount = 0;
  locallock->lockCleared = 0;
  locallock->numLockOwners = 0;
  locallock->maxLockOwners = 8;
  locallock->lockOwners = ((void*)0);
  locallock->lockOwners = (LOCALLOCKOWNER *)
   MemoryContextAlloc(TopMemoryContext,
          locallock->maxLockOwners * sizeof(LOCALLOCKOWNER));
 }
 else
 {

  if (locallock->numLockOwners >= locallock->maxLockOwners)
  {
   int newsize = locallock->maxLockOwners * 2;

   locallock->lockOwners = (LOCALLOCKOWNER *)
    repalloc(locallock->lockOwners,
       newsize * sizeof(LOCALLOCKOWNER));
   locallock->maxLockOwners = newsize;
  }
 }
 hashcode = locallock->hashcode;

 if (locallockp)
  *locallockp = locallock;







 if (locallock->nLocks > 0)
 {
  GrantLockLocal(locallock, owner);
  if (locallock->lockCleared)
   return LOCKACQUIRE_ALREADY_CLEAR;
  else
   return LOCKACQUIRE_ALREADY_HELD;
 }
 if (lockmode >= AccessExclusiveLock &&
  locktag->locktag_type == LOCKTAG_RELATION &&
  !RecoveryInProgress() &&
  XLogStandbyInfoActive())
 {
  LogAccessExclusiveLockPrepare();
  log_lock = 1;
 }
 if (EligibleForRelationFastPath(locktag, lockmode) &&
  FastPathLocalUseCount < FP_LOCK_SLOTS_PER_BACKEND)
 {
  uint32 fasthashcode = FastPathStrongLockHashPartition(hashcode);
  bool acquired;







  LWLockAcquire(&MyProc->backendLock, LW_EXCLUSIVE);
  if (FastPathStrongRelationLocks->count[fasthashcode] != 0)
   acquired = 0;
  else
   acquired = FastPathGrantRelationLock(locktag->locktag_field2,
             lockmode);
  LWLockRelease(&MyProc->backendLock);
  if (acquired)
  {





   locallock->lock = ((void*)0);
   locallock->proclock = ((void*)0);
   GrantLockLocal(locallock, owner);
   return LOCKACQUIRE_OK;
  }
 }







 if (ConflictsWithRelationFastPath(locktag, lockmode))
 {
  uint32 fasthashcode = FastPathStrongLockHashPartition(hashcode);

  BeginStrongLockAcquire(locallock, fasthashcode);
  if (!FastPathTransferRelationLocks(lockMethodTable, locktag,
             hashcode))
  {
   AbortStrongLockAcquire();
   if (locallock->nLocks == 0)
    RemoveLocalLock(locallock);
   if (locallockp)
    *locallockp = ((void*)0);
   if (reportMemoryError)
    ereport(ERROR,
      (errcode(ERRCODE_OUT_OF_MEMORY),
       errmsg("out of shared memory"),
       errhint("You might need to increase max_locks_per_transaction.")));
   else
    return LOCKACQUIRE_NOT_AVAIL;
  }
 }






 partitionLock = LockHashPartitionLock(hashcode);

 LWLockAcquire(partitionLock, LW_EXCLUSIVE);
 proclock = SetupLockInTable(lockMethodTable, MyProc, locktag,
        hashcode, lockmode);
 if (!proclock)
 {
  AbortStrongLockAcquire();
  LWLockRelease(partitionLock);
  if (locallock->nLocks == 0)
   RemoveLocalLock(locallock);
  if (locallockp)
   *locallockp = ((void*)0);
  if (reportMemoryError)
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of shared memory"),
      errhint("You might need to increase max_locks_per_transaction.")));
  else
   return LOCKACQUIRE_NOT_AVAIL;
 }
 locallock->proclock = proclock;
 lock = proclock->tag.myLock;
 locallock->lock = lock;






 if (lockMethodTable->conflictTab[lockmode] & lock->waitMask)
  status = STATUS_FOUND;
 else
  status = LockCheckConflicts(lockMethodTable, lockmode,
         lock, proclock);

 if (status == STATUS_OK)
 {

  GrantLock(lock, proclock, lockmode);
  GrantLockLocal(locallock, owner);
 }
 else
 {
  Assert(status == STATUS_FOUND);






  if (dontWait)
  {
   AbortStrongLockAcquire();
   if (proclock->holdMask == 0)
   {
    uint32 proclock_hashcode;

    proclock_hashcode = ProcLockHashCode(&proclock->tag, hashcode);
    SHMQueueDelete(&proclock->lockLink);
    SHMQueueDelete(&proclock->procLink);
    if (!hash_search_with_hash_value(LockMethodProcLockHash,
             (void *) &(proclock->tag),
             proclock_hashcode,
             HASH_REMOVE,
             ((void*)0)))
     elog(PANIC, "proclock table corrupted");
   }
   else
    PROCLOCK_PRINT("LockAcquire: NOWAIT", proclock);
   lock->nRequested--;
   lock->requested[lockmode]--;
   LOCK_PRINT("LockAcquire: conditional lock failed", lock, lockmode);
   Assert((lock->nRequested > 0) && (lock->requested[lockmode] >= 0));
   Assert(lock->nGranted <= lock->nRequested);
   LWLockRelease(partitionLock);
   if (locallock->nLocks == 0)
    RemoveLocalLock(locallock);
   if (locallockp)
    *locallockp = ((void*)0);
   return LOCKACQUIRE_NOT_AVAIL;
  }




  MyProc->heldLocks = proclock->holdMask;





  TRACE_POSTGRESQL_LOCK_WAIT_START(locktag->locktag_field1,
           locktag->locktag_field2,
           locktag->locktag_field3,
           locktag->locktag_field4,
           locktag->locktag_type,
           lockmode);

  WaitOnLock(locallock, owner);

  TRACE_POSTGRESQL_LOCK_WAIT_DONE(locktag->locktag_field1,
          locktag->locktag_field2,
          locktag->locktag_field3,
          locktag->locktag_field4,
          locktag->locktag_type,
          lockmode);
  if (!(proclock->holdMask & LOCKBIT_ON(lockmode)))
  {
   AbortStrongLockAcquire();
   PROCLOCK_PRINT("LockAcquire: INCONSISTENT", proclock);
   LOCK_PRINT("LockAcquire: INCONSISTENT", lock, lockmode);

   LWLockRelease(partitionLock);
   elog(ERROR, "LockAcquire failed");
  }
  PROCLOCK_PRINT("LockAcquire: granted", proclock);
  LOCK_PRINT("LockAcquire: granted", lock, lockmode);
 }





 FinishStrongLockAcquire();

 LWLockRelease(partitionLock);





 if (log_lock)
 {





  LogAccessExclusiveLock(locktag->locktag_field1,
          locktag->locktag_field2);
 }

 return LOCKACQUIRE_OK;
}
