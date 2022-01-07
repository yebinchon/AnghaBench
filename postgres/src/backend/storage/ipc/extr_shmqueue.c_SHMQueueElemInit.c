
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; int prev; } ;
typedef TYPE_1__ SHM_QUEUE ;


 int Assert (int ) ;
 int ShmemAddrIsValid (TYPE_1__*) ;

void
SHMQueueElemInit(SHM_QUEUE *queue)
{
 Assert(ShmemAddrIsValid(queue));
 queue->prev = queue->next = ((void*)0);
}
