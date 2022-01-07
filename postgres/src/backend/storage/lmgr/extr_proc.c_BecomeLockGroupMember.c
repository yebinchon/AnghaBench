
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pid; int lockGroupLink; int lockGroupMembers; struct TYPE_5__* lockGroupLeader; } ;
typedef TYPE_1__ PGPROC ;
typedef int LWLock ;


 int Assert (int) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLockByProc (TYPE_1__*) ;
 TYPE_1__* MyProc ;
 int dlist_push_tail (int *,int *) ;

bool
BecomeLockGroupMember(PGPROC *leader, int pid)
{
 LWLock *leader_lwlock;
 bool ok = 0;


 Assert(MyProc != leader);


 Assert(MyProc->lockGroupLeader == ((void*)0));


 Assert(pid != 0);
 leader_lwlock = LockHashPartitionLockByProc(leader);
 LWLockAcquire(leader_lwlock, LW_EXCLUSIVE);


 if (leader->pid == pid && leader->lockGroupLeader == leader)
 {

  ok = 1;
  MyProc->lockGroupLeader = leader;
  dlist_push_tail(&leader->lockGroupMembers, &MyProc->lockGroupLink);
 }
 LWLockRelease(leader_lwlock);

 return ok;
}
