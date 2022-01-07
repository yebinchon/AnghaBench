
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockGroupLink; int lockGroupMembers; struct TYPE_3__* lockGroupLeader; } ;
typedef int LWLock ;


 int Assert (int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLockByProc (TYPE_1__*) ;
 TYPE_1__* MyProc ;
 int dlist_push_head (int *,int *) ;

void
BecomeLockGroupLeader(void)
{
 LWLock *leader_lwlock;


 if (MyProc->lockGroupLeader == MyProc)
  return;


 Assert(MyProc->lockGroupLeader == ((void*)0));


 leader_lwlock = LockHashPartitionLockByProc(MyProc);
 LWLockAcquire(leader_lwlock, LW_EXCLUSIVE);
 MyProc->lockGroupLeader = MyProc;
 dlist_push_head(&MyProc->lockGroupMembers, &MyProc->lockGroupLink);
 LWLockRelease(leader_lwlock);
}
