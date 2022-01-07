
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int commandList; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_7__ {int * procedures; int * operators; int address; } ;
struct TYPE_8__ {TYPE_1__ createopc; } ;
struct TYPE_9__ {int * parsetree; TYPE_2__ d; int in_extension; int type; } ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef int CreateOpClassStmt ;
typedef TYPE_3__ CollectedCommand ;


 int MemoryContextSwitchTo (int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int OperatorClassRelationId ;
 int SCT_CreateOpClass ;
 scalar_t__ copyObject (int *) ;
 int creating_extension ;
 TYPE_6__* currentEventTriggerState ;
 int lappend (int ,TYPE_3__*) ;
 TYPE_3__* palloc0 (int) ;

void
EventTriggerCollectCreateOpClass(CreateOpClassStmt *stmt, Oid opcoid,
         List *operators, List *procedures)
{
 MemoryContext oldcxt;
 CollectedCommand *command;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 command = palloc0(sizeof(CollectedCommand));
 command->type = SCT_CreateOpClass;
 command->in_extension = creating_extension;
 ObjectAddressSet(command->d.createopc.address,
      OperatorClassRelationId, opcoid);
 command->d.createopc.operators = operators;
 command->d.createopc.procedures = procedures;
 command->parsetree = (Node *) copyObject(stmt);

 currentEventTriggerState->commandList =
  lappend(currentEventTriggerState->commandList, command);

 MemoryContextSwitchTo(oldcxt);
}
