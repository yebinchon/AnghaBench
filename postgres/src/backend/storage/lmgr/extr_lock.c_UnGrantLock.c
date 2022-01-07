
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nRequested; scalar_t__* requested; scalar_t__ nGranted; scalar_t__* granted; int waitMask; int grantMask; } ;
struct TYPE_10__ {int* conflictTab; } ;
struct TYPE_9__ {int holdMask; } ;
typedef TYPE_1__ PROCLOCK ;
typedef TYPE_2__* LockMethod ;
typedef size_t LOCKMODE ;
typedef TYPE_3__ LOCK ;


 int Assert (int) ;
 int LOCKBIT_OFF (size_t) ;
 int LOCK_PRINT (char*,TYPE_3__*,size_t) ;
 int PROCLOCK_PRINT (char*,TYPE_1__*) ;

__attribute__((used)) static bool
UnGrantLock(LOCK *lock, LOCKMODE lockmode,
   PROCLOCK *proclock, LockMethod lockMethodTable)
{
 bool wakeupNeeded = 0;

 Assert((lock->nRequested > 0) && (lock->requested[lockmode] > 0));
 Assert((lock->nGranted > 0) && (lock->granted[lockmode] > 0));
 Assert(lock->nGranted <= lock->nRequested);




 lock->nRequested--;
 lock->requested[lockmode]--;
 lock->nGranted--;
 lock->granted[lockmode]--;

 if (lock->granted[lockmode] == 0)
 {

  lock->grantMask &= LOCKBIT_OFF(lockmode);
 }

 LOCK_PRINT("UnGrantLock: updated", lock, lockmode);
 if (lockMethodTable->conflictTab[lockmode] & lock->waitMask)
  wakeupNeeded = 1;




 proclock->holdMask &= LOCKBIT_OFF(lockmode);
 PROCLOCK_PRINT("UnGrantLock: updated", proclock);

 return wakeupNeeded;
}
