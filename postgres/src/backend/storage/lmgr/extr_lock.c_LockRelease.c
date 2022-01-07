
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_14__ ;


typedef int localtag ;
struct TYPE_29__ {scalar_t__ nLocks; int numLockOwners; int lockCleared; int hashcode; TYPE_2__* proclock; int * lock; TYPE_6__* lockOwners; } ;
struct TYPE_28__ {scalar_t__ nLocks; int * owner; } ;
struct TYPE_26__ {size_t locktag_lockmethodid; int locktag_field2; int locktag_field1; } ;
struct TYPE_27__ {size_t mode; TYPE_4__ lock; } ;
struct TYPE_25__ {size_t numLockModes; size_t* lockModeNames; } ;
struct TYPE_24__ {int holdMask; } ;
struct TYPE_23__ {TYPE_14__* myProc; int * myLock; } ;
struct TYPE_22__ {int backendLock; } ;
typedef int * ResourceOwner ;
typedef TYPE_1__ PROCLOCKTAG ;
typedef TYPE_2__ PROCLOCK ;
typedef TYPE_3__* LockMethod ;
typedef int LWLock ;
typedef TYPE_4__ LOCKTAG ;
typedef size_t LOCKMODE ;
typedef size_t LOCKMETHODID ;
typedef int LOCK ;
typedef TYPE_5__ LOCALLOCKTAG ;
typedef TYPE_6__ LOCALLOCKOWNER ;
typedef TYPE_7__ LOCALLOCK ;


 int Assert (int) ;
 int CleanUpLock (int *,TYPE_2__*,TYPE_3__*,int ,int) ;
 int * CurrentResourceOwner ;
 int ERROR ;
 int EligibleForRelationFastPath (TYPE_4__ const*,size_t) ;
 scalar_t__ FastPathLocalUseCount ;
 int FastPathUnGrantRelationLock (int ,size_t) ;
 int HASH_FIND ;
 int LOCKBIT_ON (size_t) ;
 scalar_t__ LOCK_DEBUG_ENABLED (TYPE_4__ const*) ;
 int LOCK_PRINT (char*,int *,size_t) ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLock (int ) ;
 int LockMethodLocalHash ;
 int LockMethodLockHash ;
 int LockMethodProcLockHash ;
 TYPE_3__** LockMethods ;
 int MemSet (TYPE_5__*,int ,int) ;
 TYPE_14__* MyProc ;
 int PROCLOCK_PRINT (char*,TYPE_2__*) ;
 int RemoveLocalLock (TYPE_7__*) ;
 int ResourceOwnerForgetLock (int *,TYPE_7__*) ;
 int UnGrantLock (int *,size_t,TYPE_2__*,TYPE_3__*) ;
 int WARNING ;
 int elog (int ,char*,...) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 scalar_t__ hash_search_with_hash_value (int ,void const*,int ,int ,int *) ;
 size_t lengthof (TYPE_3__**) ;

bool
LockRelease(const LOCKTAG *locktag, LOCKMODE lockmode, bool sessionLock)
{
 LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
 LockMethod lockMethodTable;
 LOCALLOCKTAG localtag;
 LOCALLOCK *locallock;
 LOCK *lock;
 PROCLOCK *proclock;
 LWLock *partitionLock;
 bool wakeupNeeded;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);
 lockMethodTable = LockMethods[lockmethodid];
 if (lockmode <= 0 || lockmode > lockMethodTable->numLockModes)
  elog(ERROR, "unrecognized lock mode: %d", lockmode);
 MemSet(&localtag, 0, sizeof(localtag));
 localtag.lock = *locktag;
 localtag.mode = lockmode;

 locallock = (LOCALLOCK *) hash_search(LockMethodLocalHash,
            (void *) &localtag,
            HASH_FIND, ((void*)0));




 if (!locallock || locallock->nLocks <= 0)
 {
  elog(WARNING, "you don't own a lock of type %s",
    lockMethodTable->lockModeNames[lockmode]);
  return 0;
 }




 {
  LOCALLOCKOWNER *lockOwners = locallock->lockOwners;
  ResourceOwner owner;
  int i;


  if (sessionLock)
   owner = ((void*)0);
  else
   owner = CurrentResourceOwner;

  for (i = locallock->numLockOwners - 1; i >= 0; i--)
  {
   if (lockOwners[i].owner == owner)
   {
    Assert(lockOwners[i].nLocks > 0);
    if (--lockOwners[i].nLocks == 0)
    {
     if (owner != ((void*)0))
      ResourceOwnerForgetLock(owner, locallock);

     locallock->numLockOwners--;
     if (i < locallock->numLockOwners)
      lockOwners[i] = lockOwners[locallock->numLockOwners];
    }
    break;
   }
  }
  if (i < 0)
  {

   elog(WARNING, "you don't own a lock of type %s",
     lockMethodTable->lockModeNames[lockmode]);
   return 0;
  }
 }





 locallock->nLocks--;

 if (locallock->nLocks > 0)
  return 1;
 locallock->lockCleared = 0;


 if (EligibleForRelationFastPath(locktag, lockmode) &&
  FastPathLocalUseCount > 0)
 {
  bool released;





  LWLockAcquire(&MyProc->backendLock, LW_EXCLUSIVE);
  released = FastPathUnGrantRelationLock(locktag->locktag_field2,
              lockmode);
  LWLockRelease(&MyProc->backendLock);
  if (released)
  {
   RemoveLocalLock(locallock);
   return 1;
  }
 }




 partitionLock = LockHashPartitionLock(locallock->hashcode);

 LWLockAcquire(partitionLock, LW_EXCLUSIVE);
 lock = locallock->lock;
 if (!lock)
 {
  PROCLOCKTAG proclocktag;

  Assert(EligibleForRelationFastPath(locktag, lockmode));
  lock = (LOCK *) hash_search_with_hash_value(LockMethodLockHash,
             (const void *) locktag,
             locallock->hashcode,
             HASH_FIND,
             ((void*)0));
  if (!lock)
   elog(ERROR, "failed to re-find shared lock object");
  locallock->lock = lock;

  proclocktag.myLock = lock;
  proclocktag.myProc = MyProc;
  locallock->proclock = (PROCLOCK *) hash_search(LockMethodProcLockHash,
                (void *) &proclocktag,
                HASH_FIND,
                ((void*)0));
  if (!locallock->proclock)
   elog(ERROR, "failed to re-find shared proclock object");
 }
 LOCK_PRINT("LockRelease: found", lock, lockmode);
 proclock = locallock->proclock;
 PROCLOCK_PRINT("LockRelease: found", proclock);





 if (!(proclock->holdMask & LOCKBIT_ON(lockmode)))
 {
  PROCLOCK_PRINT("LockRelease: WRONGTYPE", proclock);
  LWLockRelease(partitionLock);
  elog(WARNING, "you don't own a lock of type %s",
    lockMethodTable->lockModeNames[lockmode]);
  RemoveLocalLock(locallock);
  return 0;
 }




 wakeupNeeded = UnGrantLock(lock, lockmode, proclock, lockMethodTable);

 CleanUpLock(lock, proclock,
    lockMethodTable, locallock->hashcode,
    wakeupNeeded);

 LWLockRelease(partitionLock);

 RemoveLocalLock(locallock);
 return 1;
}
