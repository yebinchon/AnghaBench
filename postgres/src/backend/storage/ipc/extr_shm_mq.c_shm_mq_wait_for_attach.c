
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int shm_mq_result ;
struct TYPE_7__ {int mqh_handle; TYPE_2__* mqh_queue; } ;
typedef TYPE_1__ shm_mq_handle ;
struct TYPE_8__ {int * mq_receiver; int * mq_sender; } ;
typedef TYPE_2__ shm_mq ;
typedef int PGPROC ;


 int Assert (int) ;
 scalar_t__ MyProc ;
 int SHM_MQ_DETACHED ;
 int SHM_MQ_SUCCESS ;
 scalar_t__ shm_mq_get_receiver (TYPE_2__*) ;
 scalar_t__ shm_mq_get_sender (TYPE_2__*) ;
 scalar_t__ shm_mq_wait_internal (TYPE_2__*,int **,int ) ;

shm_mq_result
shm_mq_wait_for_attach(shm_mq_handle *mqh)
{
 shm_mq *mq = mqh->mqh_queue;
 PGPROC **victim;

 if (shm_mq_get_receiver(mq) == MyProc)
  victim = &mq->mq_sender;
 else
 {
  Assert(shm_mq_get_sender(mq) == MyProc);
  victim = &mq->mq_receiver;
 }

 if (shm_mq_wait_internal(mq, victim, mqh->mqh_handle))
  return SHM_MQ_SUCCESS;
 else
  return SHM_MQ_DETACHED;
}
