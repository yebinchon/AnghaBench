
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {scalar_t__ nRequested; int tag; int procLocks; } ;
struct TYPE_8__ {scalar_t__ holdMask; int tag; int procLink; int lockLink; } ;
typedef TYPE_1__ PROCLOCK ;
typedef int LockMethod ;
typedef TYPE_2__ LOCK ;


 int Assert (int ) ;
 int HASH_REMOVE ;
 int LOCK_PRINT (char*,TYPE_2__*,int ) ;
 int LockMethodLockHash ;
 int LockMethodProcLockHash ;
 int PANIC ;
 int PROCLOCK_PRINT (char*,TYPE_1__*) ;
 int ProcLockHashCode (int *,int ) ;
 int ProcLockWakeup (int ,TYPE_2__*) ;
 int SHMQueueDelete (int *) ;
 int SHMQueueEmpty (int *) ;
 int elog (int ,char*) ;
 int hash_search_with_hash_value (int ,void*,int ,int ,int *) ;

__attribute__((used)) static void
CleanUpLock(LOCK *lock, PROCLOCK *proclock,
   LockMethod lockMethodTable, uint32 hashcode,
   bool wakeupNeeded)
{




 if (proclock->holdMask == 0)
 {
  uint32 proclock_hashcode;

  PROCLOCK_PRINT("CleanUpLock: deleting", proclock);
  SHMQueueDelete(&proclock->lockLink);
  SHMQueueDelete(&proclock->procLink);
  proclock_hashcode = ProcLockHashCode(&proclock->tag, hashcode);
  if (!hash_search_with_hash_value(LockMethodProcLockHash,
           (void *) &(proclock->tag),
           proclock_hashcode,
           HASH_REMOVE,
           ((void*)0)))
   elog(PANIC, "proclock table corrupted");
 }

 if (lock->nRequested == 0)
 {




  LOCK_PRINT("CleanUpLock: deleting", lock, 0);
  Assert(SHMQueueEmpty(&(lock->procLocks)));
  if (!hash_search_with_hash_value(LockMethodLockHash,
           (void *) &(lock->tag),
           hashcode,
           HASH_REMOVE,
           ((void*)0)))
   elog(PANIC, "lock table corrupted");
 }
 else if (wakeupNeeded)
 {

  ProcLockWakeup(lockMethodTable, lock);
 }
}
