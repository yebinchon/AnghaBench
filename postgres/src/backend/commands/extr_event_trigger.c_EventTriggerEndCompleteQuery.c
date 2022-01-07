
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cxt; struct TYPE_3__* previous; } ;
typedef TYPE_1__ EventTriggerQueryState ;


 int MemoryContextDelete (int ) ;
 TYPE_1__* currentEventTriggerState ;

void
EventTriggerEndCompleteQuery(void)
{
 EventTriggerQueryState *prevstate;

 prevstate = currentEventTriggerState->previous;


 MemoryContextDelete(currentEventTriggerState->cxt);

 currentEventTriggerState = prevstate;
}
