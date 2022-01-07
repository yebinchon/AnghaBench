
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mq_mutex; TYPE_2__* mq_receiver; TYPE_2__* mq_sender; } ;
typedef TYPE_1__ shm_mq ;
struct TYPE_6__ {int procLatch; } ;
typedef TYPE_2__ PGPROC ;


 int Assert (int ) ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
shm_mq_set_sender(shm_mq *mq, PGPROC *proc)
{
 PGPROC *receiver;

 SpinLockAcquire(&mq->mq_mutex);
 Assert(mq->mq_sender == ((void*)0));
 mq->mq_sender = proc;
 receiver = mq->mq_receiver;
 SpinLockRelease(&mq->mq_mutex);

 if (receiver != ((void*)0))
  SetLatch(&receiver->procLatch);
}
