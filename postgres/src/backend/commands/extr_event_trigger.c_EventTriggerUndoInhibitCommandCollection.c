
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commandCollectionInhibited; } ;


 TYPE_1__* currentEventTriggerState ;

void
EventTriggerUndoInhibitCommandCollection(void)
{
 if (!currentEventTriggerState)
  return;

 currentEventTriggerState->commandCollectionInhibited = 0;
}
