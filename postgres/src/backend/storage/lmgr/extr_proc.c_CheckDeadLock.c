
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * next; int * prev; } ;
struct TYPE_8__ {TYPE_1__* waitLock; TYPE_2__ links; } ;
struct TYPE_6__ {int tag; } ;


 int Assert (int ) ;
 scalar_t__ DS_HARD_DEADLOCK ;
 scalar_t__ DeadLockCheck (TYPE_3__*) ;
 scalar_t__ Debug_deadlocks ;
 int DumpAllLocks () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LockHashPartitionLockByIndex (int) ;
 int LockTagHashCode (int *) ;
 TYPE_3__* MyProc ;
 int NUM_LOCK_PARTITIONS ;
 int RemoveFromWaitQueue (TYPE_3__*,int ) ;
 scalar_t__ deadlock_state ;

__attribute__((used)) static void
CheckDeadLock(void)
{
 int i;
 for (i = 0; i < NUM_LOCK_PARTITIONS; i++)
  LWLockAcquire(LockHashPartitionLockByIndex(i), LW_EXCLUSIVE);
 if (MyProc->links.prev == ((void*)0) ||
  MyProc->links.next == ((void*)0))
  goto check_done;







 deadlock_state = DeadLockCheck(MyProc);

 if (deadlock_state == DS_HARD_DEADLOCK)
 {
  Assert(MyProc->waitLock != ((void*)0));
  RemoveFromWaitQueue(MyProc, LockTagHashCode(&(MyProc->waitLock->tag)));
 }
check_done:
 for (i = NUM_LOCK_PARTITIONS; --i >= 0;)
  LWLockRelease(LockHashPartitionLockByIndex(i));
}
