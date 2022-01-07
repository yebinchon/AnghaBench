
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numtriggers; TYPE_3__* triggers; int trig_insert_before_statement; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_10__ {int tg_event; TYPE_3__* tg_trigger; int * tg_newtable; int * tg_oldtable; int * tg_newslot; int * tg_trigslot; int * tg_newtuple; int * tg_trigtuple; int tg_relation; int type; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_11__ {int tgtype; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_12__ {int ri_TrigInstrument; int ri_TrigFunctions; int ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef scalar_t__ HeapTuple ;
typedef int EState ;


 int CMD_INSERT ;
 int ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ;
 int ERROR ;
 scalar_t__ ExecCallTriggerFunc (TYPE_2__*,int,int ,int ,int ) ;
 int GetPerTupleMemoryContext (int *) ;
 int RelationGetRelid (int ) ;
 int TRIGGER_EVENT_BEFORE ;
 int TRIGGER_EVENT_INSERT ;
 int TRIGGER_TYPE_BEFORE ;
 int TRIGGER_TYPE_INSERT ;
 int TRIGGER_TYPE_MATCHES (int ,int ,int ,int ) ;
 int TRIGGER_TYPE_STATEMENT ;
 int T_TriggerData ;
 int TriggerEnabled (int *,TYPE_4__*,TYPE_3__*,int,int *,int *,int *) ;
 scalar_t__ before_stmt_triggers_fired (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
ExecBSInsertTriggers(EState *estate, ResultRelInfo *relinfo)
{
 TriggerDesc *trigdesc;
 int i;
 TriggerData LocTriggerData;

 trigdesc = relinfo->ri_TrigDesc;

 if (trigdesc == ((void*)0))
  return;
 if (!trigdesc->trig_insert_before_statement)
  return;


 if (before_stmt_triggers_fired(RelationGetRelid(relinfo->ri_RelationDesc),
           CMD_INSERT))
  return;

 LocTriggerData.type = T_TriggerData;
 LocTriggerData.tg_event = TRIGGER_EVENT_INSERT |
  TRIGGER_EVENT_BEFORE;
 LocTriggerData.tg_relation = relinfo->ri_RelationDesc;
 LocTriggerData.tg_trigtuple = ((void*)0);
 LocTriggerData.tg_newtuple = ((void*)0);
 LocTriggerData.tg_trigslot = ((void*)0);
 LocTriggerData.tg_newslot = ((void*)0);
 LocTriggerData.tg_oldtable = ((void*)0);
 LocTriggerData.tg_newtable = ((void*)0);
 for (i = 0; i < trigdesc->numtriggers; i++)
 {
  Trigger *trigger = &trigdesc->triggers[i];
  HeapTuple newtuple;

  if (!TRIGGER_TYPE_MATCHES(trigger->tgtype,
          TRIGGER_TYPE_STATEMENT,
          TRIGGER_TYPE_BEFORE,
          TRIGGER_TYPE_INSERT))
   continue;
  if (!TriggerEnabled(estate, relinfo, trigger, LocTriggerData.tg_event,
       ((void*)0), ((void*)0), ((void*)0)))
   continue;

  LocTriggerData.tg_trigger = trigger;
  newtuple = ExecCallTriggerFunc(&LocTriggerData,
            i,
            relinfo->ri_TrigFunctions,
            relinfo->ri_TrigInstrument,
            GetPerTupleMemoryContext(estate));

  if (newtuple)
   ereport(ERROR,
     (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
      errmsg("BEFORE STATEMENT trigger cannot return a value")));
 }
}
