
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lwWaiting; int pgprocno; scalar_t__ lwWaitMode; } ;
struct TYPE_6__ {int nwaiters; int waiters; int state; } ;
typedef scalar_t__ LWLockMode ;
typedef TYPE_1__ LWLock ;


 int LWLockWaitListLock (TYPE_1__*) ;
 int LWLockWaitListUnlock (TYPE_1__*) ;
 int LW_FLAG_HAS_WAITERS ;
 scalar_t__ LW_WAIT_UNTIL_FREE ;
 TYPE_2__* MyProc ;
 int PANIC ;
 int elog (int ,char*) ;
 int lwWaitLink ;
 int pg_atomic_fetch_add_u32 (int *,int) ;
 int pg_atomic_fetch_or_u32 (int *,int ) ;
 int proclist_push_head (int *,int ,int ) ;
 int proclist_push_tail (int *,int ,int ) ;

__attribute__((used)) static void
LWLockQueueSelf(LWLock *lock, LWLockMode mode)
{





 if (MyProc == ((void*)0))
  elog(PANIC, "cannot wait without a PGPROC structure");

 if (MyProc->lwWaiting)
  elog(PANIC, "queueing for lock while waiting on another one");

 LWLockWaitListLock(lock);


 pg_atomic_fetch_or_u32(&lock->state, LW_FLAG_HAS_WAITERS);

 MyProc->lwWaiting = 1;
 MyProc->lwWaitMode = mode;


 if (mode == LW_WAIT_UNTIL_FREE)
  proclist_push_head(&lock->waiters, MyProc->pgprocno, lwWaitLink);
 else
  proclist_push_tail(&lock->waiters, MyProc->pgprocno, lwWaitLink);


 LWLockWaitListUnlock(lock);





}
