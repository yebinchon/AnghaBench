
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ shm_mq_result ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ TupleQueueReader ;
struct TYPE_6__ {void* t_data; int t_len; int t_tableOid; int t_self; } ;
typedef int Size ;
typedef TYPE_2__ HeapTupleData ;
typedef int * HeapTuple ;


 int Assert (int) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ SHM_MQ_DETACHED ;
 scalar_t__ SHM_MQ_SUCCESS ;
 scalar_t__ SHM_MQ_WOULD_BLOCK ;
 int * heap_copytuple (TYPE_2__*) ;
 scalar_t__ shm_mq_receive (int ,int *,void**,int) ;

HeapTuple
TupleQueueReaderNext(TupleQueueReader *reader, bool nowait, bool *done)
{
 HeapTupleData htup;
 shm_mq_result result;
 Size nbytes;
 void *data;

 if (done != ((void*)0))
  *done = 0;


 result = shm_mq_receive(reader->queue, &nbytes, &data, nowait);


 if (result == SHM_MQ_DETACHED)
 {
  if (done != ((void*)0))
   *done = 1;
  return ((void*)0);
 }


 if (result == SHM_MQ_WOULD_BLOCK)
  return ((void*)0);
 Assert(result == SHM_MQ_SUCCESS);





 ItemPointerSetInvalid(&htup.t_self);
 htup.t_tableOid = InvalidOid;
 htup.t_len = nbytes;
 htup.t_data = data;

 return heap_copytuple(&htup);
}
