
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nGranted; scalar_t__* granted; scalar_t__* requested; scalar_t__ nRequested; int waitMask; int grantMask; } ;
struct TYPE_6__ {int holdMask; } ;
typedef TYPE_1__ PROCLOCK ;
typedef size_t LOCKMODE ;
typedef TYPE_2__ LOCK ;


 int Assert (int) ;
 int LOCKBIT_OFF (size_t) ;
 int LOCKBIT_ON (size_t) ;
 int LOCK_PRINT (char*,TYPE_2__*,size_t) ;

void
GrantLock(LOCK *lock, PROCLOCK *proclock, LOCKMODE lockmode)
{
 lock->nGranted++;
 lock->granted[lockmode]++;
 lock->grantMask |= LOCKBIT_ON(lockmode);
 if (lock->granted[lockmode] == lock->requested[lockmode])
  lock->waitMask &= LOCKBIT_OFF(lockmode);
 proclock->holdMask |= LOCKBIT_ON(lockmode);
 LOCK_PRINT("GrantLock", lock, lockmode);
 Assert((lock->nGranted > 0) && (lock->granted[lockmode] > 0));
 Assert(lock->nGranted <= lock->nRequested);
}
