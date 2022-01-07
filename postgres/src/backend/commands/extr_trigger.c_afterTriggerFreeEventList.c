
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int * tailfree; int * tail; TYPE_2__* head; } ;
typedef TYPE_1__ AfterTriggerEventList ;
typedef TYPE_2__ AfterTriggerEventChunk ;


 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
afterTriggerFreeEventList(AfterTriggerEventList *events)
{
 AfterTriggerEventChunk *chunk;

 while ((chunk = events->head) != ((void*)0))
 {
  events->head = chunk->next;
  pfree(chunk);
 }
 events->tail = ((void*)0);
 events->tailfree = ((void*)0);
}
