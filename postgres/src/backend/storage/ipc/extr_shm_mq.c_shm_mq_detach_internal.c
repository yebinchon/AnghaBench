
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mq_detached; int mq_mutex; TYPE_2__* mq_sender; TYPE_2__* mq_receiver; } ;
typedef TYPE_1__ shm_mq ;
struct TYPE_6__ {int procLatch; } ;
typedef TYPE_2__ PGPROC ;


 int Assert (int) ;
 TYPE_2__* MyProc ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static void
shm_mq_detach_internal(shm_mq *mq)
{
 PGPROC *victim;

 SpinLockAcquire(&mq->mq_mutex);
 if (mq->mq_sender == MyProc)
  victim = mq->mq_receiver;
 else
 {
  Assert(mq->mq_receiver == MyProc);
  victim = mq->mq_sender;
 }
 mq->mq_detached = 1;
 SpinLockRelease(&mq->mq_mutex);

 if (victim != ((void*)0))
  SetLatch(&victim->procLatch);
}
