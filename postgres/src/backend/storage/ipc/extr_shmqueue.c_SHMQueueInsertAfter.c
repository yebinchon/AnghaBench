
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ SHM_QUEUE ;


 int Assert (int ) ;
 int ShmemAddrIsValid (TYPE_1__*) ;

void
SHMQueueInsertAfter(SHM_QUEUE *queue, SHM_QUEUE *elem)
{
 SHM_QUEUE *nextPtr = queue->next;

 Assert(ShmemAddrIsValid(queue));
 Assert(ShmemAddrIsValid(elem));

 elem->prev = nextPtr->prev;
 elem->next = queue->next;
 queue->next = elem;
 nextPtr->prev = elem;
}
