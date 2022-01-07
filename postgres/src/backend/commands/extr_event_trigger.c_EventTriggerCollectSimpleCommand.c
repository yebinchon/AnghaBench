
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int commandList; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_7__ {void* secondaryObject; void* address; } ;
struct TYPE_8__ {TYPE_1__ simple; } ;
struct TYPE_9__ {int parsetree; TYPE_2__ d; int in_extension; int type; } ;
typedef void* ObjectAddress ;
typedef int Node ;
typedef int MemoryContext ;
typedef TYPE_3__ CollectedCommand ;


 int MemoryContextSwitchTo (int ) ;
 int SCT_Simple ;
 int copyObject (int *) ;
 int creating_extension ;
 TYPE_6__* currentEventTriggerState ;
 int lappend (int ,TYPE_3__*) ;
 TYPE_3__* palloc (int) ;

void
EventTriggerCollectSimpleCommand(ObjectAddress address,
         ObjectAddress secondaryObject,
         Node *parsetree)
{
 MemoryContext oldcxt;
 CollectedCommand *command;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 command = palloc(sizeof(CollectedCommand));

 command->type = SCT_Simple;
 command->in_extension = creating_extension;

 command->d.simple.address = address;
 command->d.simple.secondaryObject = secondaryObject;
 command->parsetree = copyObject(parsetree);

 currentEventTriggerState->commandList = lappend(currentEventTriggerState->commandList,
             command);

 MemoryContextSwitchTo(oldcxt);
}
