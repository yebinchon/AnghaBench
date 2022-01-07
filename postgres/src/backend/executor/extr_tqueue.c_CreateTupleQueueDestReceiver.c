
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int shm_mq_handle ;
struct TYPE_3__ {int mydest; int rDestroy; int rShutdown; int rStartup; int receiveSlot; } ;
struct TYPE_4__ {int * queue; TYPE_1__ pub; } ;
typedef TYPE_2__ TQueueDestReceiver ;
typedef int DestReceiver ;


 int DestTupleQueue ;
 scalar_t__ palloc0 (int) ;
 int tqueueDestroyReceiver ;
 int tqueueReceiveSlot ;
 int tqueueShutdownReceiver ;
 int tqueueStartupReceiver ;

DestReceiver *
CreateTupleQueueDestReceiver(shm_mq_handle *handle)
{
 TQueueDestReceiver *self;

 self = (TQueueDestReceiver *) palloc0(sizeof(TQueueDestReceiver));

 self->pub.receiveSlot = tqueueReceiveSlot;
 self->pub.rStartup = tqueueStartupReceiver;
 self->pub.rShutdown = tqueueShutdownReceiver;
 self->pub.rDestroy = tqueueDestroyReceiver;
 self->pub.mydest = DestTupleQueue;
 self->queue = handle;

 return (DestReceiver *) self;
}
