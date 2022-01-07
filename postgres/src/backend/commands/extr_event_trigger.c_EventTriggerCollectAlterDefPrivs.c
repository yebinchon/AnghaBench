
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int commandList; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_15__ {TYPE_3__* action; } ;
struct TYPE_11__ {int objtype; } ;
struct TYPE_12__ {TYPE_1__ defprivs; } ;
struct TYPE_14__ {int * parsetree; int in_extension; TYPE_2__ d; int type; } ;
struct TYPE_13__ {int objtype; } ;
typedef int Node ;
typedef int MemoryContext ;
typedef TYPE_4__ CollectedCommand ;
typedef TYPE_5__ AlterDefaultPrivilegesStmt ;


 int MemoryContextSwitchTo (int ) ;
 int SCT_AlterDefaultPrivileges ;
 scalar_t__ copyObject (TYPE_5__*) ;
 int creating_extension ;
 TYPE_8__* currentEventTriggerState ;
 int lappend (int ,TYPE_4__*) ;
 TYPE_4__* palloc0 (int) ;

void
EventTriggerCollectAlterDefPrivs(AlterDefaultPrivilegesStmt *stmt)
{
 MemoryContext oldcxt;
 CollectedCommand *command;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 command = palloc0(sizeof(CollectedCommand));
 command->type = SCT_AlterDefaultPrivileges;
 command->d.defprivs.objtype = stmt->action->objtype;
 command->in_extension = creating_extension;
 command->parsetree = (Node *) copyObject(stmt);

 currentEventTriggerState->commandList =
  lappend(currentEventTriggerState->commandList, command);
 MemoryContextSwitchTo(oldcxt);
}
