
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mq_mutex; int * mq_receiver; } ;
typedef TYPE_1__ shm_mq ;
typedef int PGPROC ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

PGPROC *
shm_mq_get_receiver(shm_mq *mq)
{
 PGPROC *receiver;

 SpinLockAcquire(&mq->mq_mutex);
 receiver = mq->mq_receiver;
 SpinLockRelease(&mq->mq_mutex);

 return receiver;
}
