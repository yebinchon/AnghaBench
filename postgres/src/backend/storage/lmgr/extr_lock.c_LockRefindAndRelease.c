
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_15__ {scalar_t__* count; int mutex; } ;
struct TYPE_14__ {int * lockModeNames; } ;
struct TYPE_13__ {int holdMask; } ;
struct TYPE_12__ {int * myProc; int * myLock; } ;
typedef TYPE_1__ PROCLOCKTAG ;
typedef TYPE_2__ PROCLOCK ;
typedef int PGPROC ;
typedef TYPE_3__* LockMethod ;
typedef int LWLock ;
typedef int LOCKTAG ;
typedef size_t LOCKMODE ;
typedef int LOCK ;


 int Assert (int) ;
 int CleanUpLock (int *,TYPE_2__*,TYPE_3__*,size_t,int) ;
 scalar_t__ ConflictsWithRelationFastPath (int *,size_t) ;
 size_t FastPathStrongLockHashPartition (size_t) ;
 TYPE_9__* FastPathStrongRelationLocks ;
 int HASH_FIND ;
 int LOCKBIT_ON (size_t) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLock (size_t) ;
 int LockMethodLockHash ;
 int LockMethodProcLockHash ;
 size_t LockTagHashCode (int *) ;
 int PANIC ;
 int PROCLOCK_PRINT (char*,TYPE_2__*) ;
 size_t ProcLockHashCode (TYPE_1__*,size_t) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int UnGrantLock (int *,size_t,TYPE_2__*,TYPE_3__*) ;
 int WARNING ;
 int elog (int ,char*,...) ;
 scalar_t__ hash_search_with_hash_value (int ,void*,size_t,int ,int *) ;

__attribute__((used)) static void
LockRefindAndRelease(LockMethod lockMethodTable, PGPROC *proc,
      LOCKTAG *locktag, LOCKMODE lockmode,
      bool decrement_strong_lock_count)
{
 LOCK *lock;
 PROCLOCK *proclock;
 PROCLOCKTAG proclocktag;
 uint32 hashcode;
 uint32 proclock_hashcode;
 LWLock *partitionLock;
 bool wakeupNeeded;

 hashcode = LockTagHashCode(locktag);
 partitionLock = LockHashPartitionLock(hashcode);

 LWLockAcquire(partitionLock, LW_EXCLUSIVE);




 lock = (LOCK *) hash_search_with_hash_value(LockMethodLockHash,
            (void *) locktag,
            hashcode,
            HASH_FIND,
            ((void*)0));
 if (!lock)
  elog(PANIC, "failed to re-find shared lock object");




 proclocktag.myLock = lock;
 proclocktag.myProc = proc;

 proclock_hashcode = ProcLockHashCode(&proclocktag, hashcode);

 proclock = (PROCLOCK *) hash_search_with_hash_value(LockMethodProcLockHash,
              (void *) &proclocktag,
              proclock_hashcode,
              HASH_FIND,
              ((void*)0));
 if (!proclock)
  elog(PANIC, "failed to re-find shared proclock object");





 if (!(proclock->holdMask & LOCKBIT_ON(lockmode)))
 {
  PROCLOCK_PRINT("lock_twophase_postcommit: WRONGTYPE", proclock);
  LWLockRelease(partitionLock);
  elog(WARNING, "you don't own a lock of type %s",
    lockMethodTable->lockModeNames[lockmode]);
  return;
 }




 wakeupNeeded = UnGrantLock(lock, lockmode, proclock, lockMethodTable);

 CleanUpLock(lock, proclock,
    lockMethodTable, hashcode,
    wakeupNeeded);

 LWLockRelease(partitionLock);




 if (decrement_strong_lock_count
  && ConflictsWithRelationFastPath(locktag, lockmode))
 {
  uint32 fasthashcode = FastPathStrongLockHashPartition(hashcode);

  SpinLockAcquire(&FastPathStrongRelationLocks->mutex);
  Assert(FastPathStrongRelationLocks->count[fasthashcode] > 0);
  FastPathStrongRelationLocks->count[fasthashcode]--;
  SpinLockRelease(&FastPathStrongRelationLocks->mutex);
 }
}
