
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* currentCommand; int commandList; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_7__ {int subcmds; } ;
struct TYPE_8__ {TYPE_1__ alterTable; } ;
struct TYPE_9__ {TYPE_2__ d; struct TYPE_9__* parent; } ;
typedef TYPE_3__ CollectedCommand ;


 TYPE_6__* currentEventTriggerState ;
 int lappend (int ,TYPE_3__*) ;
 scalar_t__ list_length (int ) ;
 int pfree (TYPE_3__*) ;

void
EventTriggerAlterTableEnd(void)
{
 CollectedCommand *parent;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 parent = currentEventTriggerState->currentCommand->parent;


 if (list_length(currentEventTriggerState->currentCommand->d.alterTable.subcmds) != 0)
 {
  currentEventTriggerState->commandList =
   lappend(currentEventTriggerState->commandList,
     currentEventTriggerState->currentCommand);
 }
 else
  pfree(currentEventTriggerState->currentCommand);

 currentEventTriggerState->currentCommand = parent;
}
