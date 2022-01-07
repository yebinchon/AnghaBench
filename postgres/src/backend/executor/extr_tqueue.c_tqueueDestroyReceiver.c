
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * queue; } ;
typedef TYPE_1__ TQueueDestReceiver ;
typedef int DestReceiver ;


 int pfree (int *) ;
 int shm_mq_detach (int *) ;

__attribute__((used)) static void
tqueueDestroyReceiver(DestReceiver *self)
{
 TQueueDestReceiver *tqueue = (TQueueDestReceiver *) self;


 if (tqueue->queue != ((void*)0))
  shm_mq_detach(tqueue->queue);
 pfree(self);
}
