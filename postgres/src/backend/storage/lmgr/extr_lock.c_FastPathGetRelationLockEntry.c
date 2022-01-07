
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_24__ {scalar_t__* fpRelId; int backendLock; } ;
struct TYPE_22__ {scalar_t__ locktag_field2; } ;
struct TYPE_18__ {size_t mode; TYPE_5__ lock; } ;
struct TYPE_23__ {size_t hashcode; TYPE_1__ tag; } ;
struct TYPE_19__ {int myLock; } ;
struct TYPE_21__ {TYPE_2__ tag; } ;
struct TYPE_20__ {TYPE_8__* myProc; int * myLock; } ;
typedef TYPE_3__ PROCLOCKTAG ;
typedef TYPE_4__ PROCLOCK ;
typedef scalar_t__ Oid ;
typedef int LockMethod ;
typedef int LWLock ;
typedef TYPE_5__ LOCKTAG ;
typedef int LOCK ;
typedef TYPE_6__ LOCALLOCK ;


 size_t DEFAULT_LOCKMETHOD ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FAST_PATH_CHECK_LOCKMODE (TYPE_8__*,size_t,size_t) ;
 int FAST_PATH_CLEAR_LOCKMODE (TYPE_8__*,size_t,size_t) ;
 scalar_t__ FAST_PATH_GET_BITS (TYPE_8__*,size_t) ;
 size_t FP_LOCK_SLOTS_PER_BACKEND ;
 int GrantLock (int ,TYPE_4__*,size_t) ;
 int HASH_FIND ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int * LockHashPartitionLock (size_t) ;
 int LockMethodLockHash ;
 int LockMethodProcLockHash ;
 int * LockMethods ;
 TYPE_8__* MyProc ;
 size_t ProcLockHashCode (TYPE_3__*,size_t) ;
 TYPE_4__* SetupLockInTable (int ,TYPE_8__*,TYPE_5__*,size_t,size_t) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ hash_search_with_hash_value (int ,void*,size_t,int ,int *) ;

__attribute__((used)) static PROCLOCK *
FastPathGetRelationLockEntry(LOCALLOCK *locallock)
{
 LockMethod lockMethodTable = LockMethods[DEFAULT_LOCKMETHOD];
 LOCKTAG *locktag = &locallock->tag.lock;
 PROCLOCK *proclock = ((void*)0);
 LWLock *partitionLock = LockHashPartitionLock(locallock->hashcode);
 Oid relid = locktag->locktag_field2;
 uint32 f;

 LWLockAcquire(&MyProc->backendLock, LW_EXCLUSIVE);

 for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
 {
  uint32 lockmode;


  if (relid != MyProc->fpRelId[f] || FAST_PATH_GET_BITS(MyProc, f) == 0)
   continue;


  lockmode = locallock->tag.mode;
  if (!FAST_PATH_CHECK_LOCKMODE(MyProc, f, lockmode))
   break;


  LWLockAcquire(partitionLock, LW_EXCLUSIVE);

  proclock = SetupLockInTable(lockMethodTable, MyProc, locktag,
         locallock->hashcode, lockmode);
  if (!proclock)
  {
   LWLockRelease(partitionLock);
   LWLockRelease(&MyProc->backendLock);
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of shared memory"),
      errhint("You might need to increase max_locks_per_transaction.")));
  }
  GrantLock(proclock->tag.myLock, proclock, lockmode);
  FAST_PATH_CLEAR_LOCKMODE(MyProc, f, lockmode);

  LWLockRelease(partitionLock);


  break;
 }

 LWLockRelease(&MyProc->backendLock);


 if (proclock == ((void*)0))
 {
  LOCK *lock;
  PROCLOCKTAG proclocktag;
  uint32 proclock_hashcode;

  LWLockAcquire(partitionLock, LW_SHARED);

  lock = (LOCK *) hash_search_with_hash_value(LockMethodLockHash,
             (void *) locktag,
             locallock->hashcode,
             HASH_FIND,
             ((void*)0));
  if (!lock)
   elog(ERROR, "failed to re-find shared lock object");

  proclocktag.myLock = lock;
  proclocktag.myProc = MyProc;

  proclock_hashcode = ProcLockHashCode(&proclocktag, locallock->hashcode);
  proclock = (PROCLOCK *)
   hash_search_with_hash_value(LockMethodProcLockHash,
          (void *) &proclocktag,
          proclock_hashcode,
          HASH_FIND,
          ((void*)0));
  if (!proclock)
   elog(ERROR, "failed to re-find shared proclock object");
  LWLockRelease(partitionLock);
 }

 return proclock;
}
