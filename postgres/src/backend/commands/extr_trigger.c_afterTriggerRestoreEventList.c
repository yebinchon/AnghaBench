
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; } ;
struct TYPE_9__ {int tailfree; TYPE_1__* tail; } ;
struct TYPE_8__ {int freeptr; TYPE_3__* next; } ;
typedef TYPE_2__ AfterTriggerEventList ;
typedef TYPE_3__ AfterTriggerEventChunk ;


 int afterTriggerFreeEventList (TYPE_2__*) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
afterTriggerRestoreEventList(AfterTriggerEventList *events,
        const AfterTriggerEventList *old_events)
{
 AfterTriggerEventChunk *chunk;
 AfterTriggerEventChunk *next_chunk;

 if (old_events->tail == ((void*)0))
 {

  afterTriggerFreeEventList(events);
 }
 else
 {
  *events = *old_events;

  for (chunk = events->tail->next; chunk != ((void*)0); chunk = next_chunk)
  {
   next_chunk = chunk->next;
   pfree(chunk);
  }

  events->tail->next = ((void*)0);
  events->tail->freeptr = events->tailfree;





 }
}
