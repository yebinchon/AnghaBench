
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int localtag ;
struct TYPE_20__ {scalar_t__ nLocks; TYPE_1__* proclock; TYPE_4__* lock; int hashcode; } ;
struct TYPE_17__ {size_t locktag_lockmethodid; int locktag_field2; int locktag_field1; } ;
struct TYPE_19__ {size_t mode; TYPE_3__ lock; } ;
struct TYPE_18__ {int waitMask; } ;
struct TYPE_16__ {size_t numLockModes; size_t* lockModeNames; int* conflictTab; } ;
struct TYPE_15__ {int holdMask; } ;
typedef TYPE_1__ PROCLOCK ;
typedef TYPE_2__* LockMethod ;
typedef int LWLock ;
typedef TYPE_3__ LOCKTAG ;
typedef size_t LOCKMODE ;
typedef size_t LOCKMETHODID ;
typedef TYPE_4__ LOCK ;
typedef TYPE_5__ LOCALLOCKTAG ;
typedef TYPE_6__ LOCALLOCK ;


 int ERROR ;
 int HASH_FIND ;
 int LOCKBIT_ON (size_t) ;
 scalar_t__ LOCK_DEBUG_ENABLED (TYPE_3__ const*) ;
 int LOCK_PRINT (char*,TYPE_4__*,size_t) ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int * LockHashPartitionLock (int ) ;
 int LockMethodLocalHash ;
 TYPE_2__** LockMethods ;
 int MemSet (TYPE_5__*,int ,int) ;
 int PROCLOCK_PRINT (char*,TYPE_1__*) ;
 int RemoveLocalLock (TYPE_6__*) ;
 int WARNING ;
 int elog (int ,char*,size_t,...) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 size_t lengthof (TYPE_2__**) ;

bool
LockHasWaiters(const LOCKTAG *locktag, LOCKMODE lockmode, bool sessionLock)
{
 LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
 LockMethod lockMethodTable;
 LOCALLOCKTAG localtag;
 LOCALLOCK *locallock;
 LOCK *lock;
 PROCLOCK *proclock;
 LWLock *partitionLock;
 bool hasWaiters = 0;

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




 partitionLock = LockHashPartitionLock(locallock->hashcode);

 LWLockAcquire(partitionLock, LW_SHARED);






 lock = locallock->lock;
 LOCK_PRINT("LockHasWaiters: found", lock, lockmode);
 proclock = locallock->proclock;
 PROCLOCK_PRINT("LockHasWaiters: found", proclock);





 if (!(proclock->holdMask & LOCKBIT_ON(lockmode)))
 {
  PROCLOCK_PRINT("LockHasWaiters: WRONGTYPE", proclock);
  LWLockRelease(partitionLock);
  elog(WARNING, "you don't own a lock of type %s",
    lockMethodTable->lockModeNames[lockmode]);
  RemoveLocalLock(locallock);
  return 0;
 }




 if ((lockMethodTable->conflictTab[lockmode] & lock->waitMask) != 0)
  hasWaiters = 1;

 LWLockRelease(partitionLock);

 return hasWaiters;
}
