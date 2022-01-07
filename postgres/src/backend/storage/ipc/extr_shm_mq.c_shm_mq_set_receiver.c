
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mq_mutex; TYPE_2__* mq_sender; TYPE_2__* mq_receiver; } ;
typedef TYPE_1__ shm_mq ;
struct TYPE_6__ {int procLatch; } ;
typedef TYPE_2__ PGPROC ;


 int Assert (int ) ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
shm_mq_set_receiver(shm_mq *mq, PGPROC *proc)
{
 PGPROC *sender;

 SpinLockAcquire(&mq->mq_mutex);
 Assert(mq->mq_receiver == ((void*)0));
 mq->mq_receiver = proc;
 sender = mq->mq_sender;
 SpinLockRelease(&mq->mq_mutex);

 if (sender != ((void*)0))
  SetLatch(&sender->procLatch);
}
