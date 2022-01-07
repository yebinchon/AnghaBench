
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ SHM_QUEUE ;


 int Assert (int ) ;
 int ShmemAddrIsValid (TYPE_1__*) ;

void
SHMQueueDelete(SHM_QUEUE *queue)
{
 SHM_QUEUE *nextElem = queue->next;
 SHM_QUEUE *prevElem = queue->prev;

 Assert(ShmemAddrIsValid(queue));
 Assert(ShmemAddrIsValid(nextElem));
 Assert(ShmemAddrIsValid(prevElem));

 prevElem->next = queue->next;
 nextElem->prev = queue->prev;

 queue->prev = queue->next = ((void*)0);
}
