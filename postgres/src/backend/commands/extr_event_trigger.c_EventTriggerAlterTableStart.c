
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* currentCommand; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_6__ {int subcmds; int objectId; int classId; } ;
struct TYPE_7__ {TYPE_1__ alterTable; } ;
struct TYPE_8__ {struct TYPE_8__* parent; int parsetree; TYPE_2__ d; int in_extension; int type; } ;
typedef int Node ;
typedef int MemoryContext ;
typedef TYPE_3__ CollectedCommand ;


 int InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int NIL ;
 int RelationRelationId ;
 int SCT_AlterTable ;
 int copyObject (int *) ;
 int creating_extension ;
 TYPE_5__* currentEventTriggerState ;
 TYPE_3__* palloc (int) ;

void
EventTriggerAlterTableStart(Node *parsetree)
{
 MemoryContext oldcxt;
 CollectedCommand *command;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 command = palloc(sizeof(CollectedCommand));

 command->type = SCT_AlterTable;
 command->in_extension = creating_extension;

 command->d.alterTable.classId = RelationRelationId;
 command->d.alterTable.objectId = InvalidOid;
 command->d.alterTable.subcmds = NIL;
 command->parsetree = copyObject(parsetree);

 command->parent = currentEventTriggerState->currentCommand;
 currentEventTriggerState->currentCommand = command;

 MemoryContextSwitchTo(oldcxt);
}
