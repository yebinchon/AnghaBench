
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * head; int * tail; } ;
struct TYPE_8__ {size_t query_depth; size_t maxquerydepth; TYPE_1__* query_stack; int firing_counter; int events; } ;
struct TYPE_7__ {TYPE_3__ events; } ;
typedef int EState ;
typedef int CommandId ;
typedef TYPE_1__ AfterTriggersQueryData ;
typedef int AfterTriggerEventChunk ;


 int AfterTriggerFreeQuery (TYPE_1__*) ;
 int Assert (int) ;
 int afterTriggerDeleteHeadEventChunk (TYPE_1__*) ;
 scalar_t__ afterTriggerInvokeEvents (TYPE_3__*,int ,int *,int) ;
 scalar_t__ afterTriggerMarkEvents (TYPE_3__*,int *,int) ;
 TYPE_2__ afterTriggers ;

void
AfterTriggerEndQuery(EState *estate)
{
 AfterTriggersQueryData *qs;


 Assert(afterTriggers.query_depth >= 0);





 if (afterTriggers.query_depth >= afterTriggers.maxquerydepth)
 {
  afterTriggers.query_depth--;
  return;
 }
 qs = &afterTriggers.query_stack[afterTriggers.query_depth];

 for (;;)
 {
  if (afterTriggerMarkEvents(&qs->events, &afterTriggers.events, 1))
  {
   CommandId firing_id = afterTriggers.firing_counter++;
   AfterTriggerEventChunk *oldtail = qs->events.tail;

   if (afterTriggerInvokeEvents(&qs->events, firing_id, estate, 0))
    break;
   qs = &afterTriggers.query_stack[afterTriggers.query_depth];
   Assert(oldtail != ((void*)0));
   while (qs->events.head != oldtail)
    afterTriggerDeleteHeadEventChunk(qs);
  }
  else
   break;
 }


 AfterTriggerFreeQuery(&afterTriggers.query_stack[afterTriggers.query_depth]);

 afterTriggers.query_depth--;
}
