
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ shm_mq_result ;
typedef int TupleTableSlot ;
struct TYPE_6__ {int t_data; int t_len; } ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ TQueueDestReceiver ;
typedef TYPE_2__* HeapTuple ;
typedef int DestReceiver ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_2__* ExecFetchSlotHeapTuple (int *,int,int*) ;
 scalar_t__ SHM_MQ_DETACHED ;
 scalar_t__ SHM_MQ_SUCCESS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_freetuple (TYPE_2__*) ;
 scalar_t__ shm_mq_send (int ,int ,int ,int) ;

__attribute__((used)) static bool
tqueueReceiveSlot(TupleTableSlot *slot, DestReceiver *self)
{
 TQueueDestReceiver *tqueue = (TQueueDestReceiver *) self;
 HeapTuple tuple;
 shm_mq_result result;
 bool should_free;


 tuple = ExecFetchSlotHeapTuple(slot, 1, &should_free);
 result = shm_mq_send(tqueue->queue, tuple->t_len, tuple->t_data, 0);

 if (should_free)
  heap_freetuple(tuple);


 if (result == SHM_MQ_DETACHED)
  return 0;
 else if (result != SHM_MQ_SUCCESS)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not send tuple to shared-memory queue")));

 return 1;
}
