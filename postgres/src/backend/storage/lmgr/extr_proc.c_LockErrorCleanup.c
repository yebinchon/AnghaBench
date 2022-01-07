
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * next; } ;
struct TYPE_10__ {scalar_t__ waitStatus; TYPE_1__ links; } ;
struct TYPE_9__ {int hashcode; } ;
struct TYPE_8__ {int keep_indicator; int id; } ;
typedef int LWLock ;
typedef TYPE_2__ DisableTimeoutParams ;


 int AbortStrongLockAcquire () ;
 int DEADLOCK_TIMEOUT ;
 int GrantAwaitedLock () ;
 int HOLD_INTERRUPTS () ;
 int LOCK_TIMEOUT ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLock (int ) ;
 TYPE_5__* MyProc ;
 int RESUME_INTERRUPTS () ;
 int RemoveFromWaitQueue (TYPE_5__*,int ) ;
 scalar_t__ STATUS_OK ;
 int disable_timeouts (TYPE_2__*,int) ;
 TYPE_3__* lockAwaited ;

void
LockErrorCleanup(void)
{
 LWLock *partitionLock;
 DisableTimeoutParams timeouts[2];

 HOLD_INTERRUPTS();

 AbortStrongLockAcquire();


 if (lockAwaited == ((void*)0))
 {
  RESUME_INTERRUPTS();
  return;
 }
 timeouts[0].id = DEADLOCK_TIMEOUT;
 timeouts[0].keep_indicator = 0;
 timeouts[1].id = LOCK_TIMEOUT;
 timeouts[1].keep_indicator = 1;
 disable_timeouts(timeouts, 2);


 partitionLock = LockHashPartitionLock(lockAwaited->hashcode);
 LWLockAcquire(partitionLock, LW_EXCLUSIVE);

 if (MyProc->links.next != ((void*)0))
 {

  RemoveFromWaitQueue(MyProc, lockAwaited->hashcode);
 }
 else
 {






  if (MyProc->waitStatus == STATUS_OK)
   GrantAwaitedLock();
 }

 lockAwaited = ((void*)0);

 LWLockRelease(partitionLock);

 RESUME_INTERRUPTS();
}
