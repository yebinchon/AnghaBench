
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ shm_mq_result ;
typedef int shm_mq_handle ;
typedef int Size ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ SHM_MQ_SUCCESS ;
 scalar_t__ shm_mq_receive (int *,int *,void**,int) ;
 scalar_t__ shm_mq_send (int *,int ,void*,int) ;

__attribute__((used)) static void
copy_messages(shm_mq_handle *inqh, shm_mq_handle *outqh)
{
 Size len;
 void *data;
 shm_mq_result res;

 for (;;)
 {

  CHECK_FOR_INTERRUPTS();


  res = shm_mq_receive(inqh, &len, &data, 0);
  if (res != SHM_MQ_SUCCESS)
   break;


  res = shm_mq_send(outqh, len, data, 0);
  if (res != SHM_MQ_SUCCESS)
   break;
 }
}
