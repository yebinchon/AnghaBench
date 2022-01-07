
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int commandList; int cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_7__ {int ndicts; int dictIds; int address; } ;
struct TYPE_8__ {TYPE_1__ atscfg; } ;
struct TYPE_9__ {int * parsetree; TYPE_2__ d; int in_extension; int type; } ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef TYPE_3__ CollectedCommand ;
typedef int AlterTSConfigurationStmt ;


 int MemoryContextSwitchTo (int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int SCT_AlterTSConfig ;
 int TSConfigRelationId ;
 scalar_t__ copyObject (int *) ;
 int creating_extension ;
 TYPE_6__* currentEventTriggerState ;
 int lappend (int ,TYPE_3__*) ;
 int memcpy (int ,int *,int) ;
 int palloc (int) ;
 TYPE_3__* palloc0 (int) ;

void
EventTriggerCollectAlterTSConfig(AlterTSConfigurationStmt *stmt, Oid cfgId,
         Oid *dictIds, int ndicts)
{
 MemoryContext oldcxt;
 CollectedCommand *command;


 if (!currentEventTriggerState ||
  currentEventTriggerState->commandCollectionInhibited)
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 command = palloc0(sizeof(CollectedCommand));
 command->type = SCT_AlterTSConfig;
 command->in_extension = creating_extension;
 ObjectAddressSet(command->d.atscfg.address,
      TSConfigRelationId, cfgId);
 command->d.atscfg.dictIds = palloc(sizeof(Oid) * ndicts);
 memcpy(command->d.atscfg.dictIds, dictIds, sizeof(Oid) * ndicts);
 command->d.atscfg.ndicts = ndicts;
 command->parsetree = (Node *) copyObject(stmt);

 currentEventTriggerState->commandList =
  lappend(currentEventTriggerState->commandList, command);

 MemoryContextSwitchTo(oldcxt);
}
