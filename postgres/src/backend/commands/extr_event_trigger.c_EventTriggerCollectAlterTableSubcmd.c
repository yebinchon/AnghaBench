
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* currentCommand; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_11__ {int parsetree; int address; } ;
struct TYPE_8__ {int subcmds; int objectId; } ;
struct TYPE_9__ {TYPE_1__ alterTable; } ;
struct TYPE_10__ {TYPE_2__ d; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int MemoryContext ;
typedef TYPE_4__ CollectedATSubcmd ;


 int AlterTableCmd ;
 int Assert (int ) ;
 int IsA (int *,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (int ) ;
 int copyObject (int *) ;
 TYPE_7__* currentEventTriggerState ;
 int lappend (int ,TYPE_4__*) ;
 TYPE_4__* palloc (int) ;

void
EventTriggerCollectAlterTableSubcmd(Node *subcmd, ObjectAddress address)
{
 MemoryContext oldcxt;
 CollectedATSubcmd *newsub;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 Assert(IsA(subcmd, AlterTableCmd));
 Assert(currentEventTriggerState->currentCommand != ((void*)0));
 Assert(OidIsValid(currentEventTriggerState->currentCommand->d.alterTable.objectId));

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 newsub = palloc(sizeof(CollectedATSubcmd));
 newsub->address = address;
 newsub->parsetree = copyObject(subcmd);

 currentEventTriggerState->currentCommand->d.alterTable.subcmds =
  lappend(currentEventTriggerState->currentCommand->d.alterTable.subcmds, newsub);

 MemoryContextSwitchTo(oldcxt);
}
