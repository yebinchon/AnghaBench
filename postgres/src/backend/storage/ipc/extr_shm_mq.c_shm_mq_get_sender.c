
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mq_mutex; int * mq_sender; } ;
typedef TYPE_1__ shm_mq ;
typedef int PGPROC ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

PGPROC *
shm_mq_get_sender(shm_mq *mq)
{
 PGPROC *sender;

 SpinLockAcquire(&mq->mq_mutex);
 sender = mq->mq_sender;
 SpinLockRelease(&mq->mq_mutex);

 return sender;
}
