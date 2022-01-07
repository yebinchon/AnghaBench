
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ SHM_QUEUE ;


 int Assert (int ) ;
 int ShmemAddrIsValid (TYPE_1__*) ;

void
SHMQueueInsertBefore(SHM_QUEUE *queue, SHM_QUEUE *elem)
{
 SHM_QUEUE *prevPtr = queue->prev;

 Assert(ShmemAddrIsValid(queue));
 Assert(ShmemAddrIsValid(elem));

 elem->next = prevPtr->next;
 elem->prev = queue->prev;
 queue->prev = elem;
 prevPtr->next = elem;
}
