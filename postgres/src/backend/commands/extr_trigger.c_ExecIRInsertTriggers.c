
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_9__ {int numtriggers; TYPE_3__* triggers; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_10__ {int tg_event; TYPE_3__* tg_trigger; int * tg_trigtuple; int * tg_trigslot; int * tg_newtable; int * tg_oldtable; int * tg_newslot; int * tg_newtuple; int tg_relation; int type; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_11__ {int tgtype; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_12__ {int ri_TrigInstrument; int ri_TrigFunctions; int ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef int * HeapTuple ;
typedef int EState ;


 int * ExecCallTriggerFunc (TYPE_2__*,int,int ,int ,int ) ;
 int * ExecFetchSlotHeapTuple (int *,int,int*) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int GetPerTupleMemoryContext (int *) ;
 int TRIGGER_EVENT_INSERT ;
 int TRIGGER_EVENT_INSTEAD ;
 int TRIGGER_EVENT_ROW ;
 int TRIGGER_TYPE_INSERT ;
 int TRIGGER_TYPE_INSTEAD ;
 int TRIGGER_TYPE_MATCHES (int ,int ,int ,int ) ;
 int TRIGGER_TYPE_ROW ;
 int T_TriggerData ;
 int TriggerEnabled (int *,TYPE_4__*,TYPE_3__*,int,int *,int *,int *) ;
 int heap_freetuple (int *) ;

bool
ExecIRInsertTriggers(EState *estate, ResultRelInfo *relinfo,
      TupleTableSlot *slot)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 HeapTuple newtuple = ((void*)0);
 bool should_free;
 TriggerData LocTriggerData;
 int i;

 LocTriggerData.type = T_TriggerData;
 LocTriggerData.tg_event = TRIGGER_EVENT_INSERT |
  TRIGGER_EVENT_ROW |
  TRIGGER_EVENT_INSTEAD;
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
  HeapTuple oldtuple;

  if (!TRIGGER_TYPE_MATCHES(trigger->tgtype,
          TRIGGER_TYPE_ROW,
          TRIGGER_TYPE_INSTEAD,
          TRIGGER_TYPE_INSERT))
   continue;
  if (!TriggerEnabled(estate, relinfo, trigger, LocTriggerData.tg_event,
       ((void*)0), ((void*)0), slot))
   continue;

  if (!newtuple)
   newtuple = ExecFetchSlotHeapTuple(slot, 1, &should_free);

  LocTriggerData.tg_trigslot = slot;
  LocTriggerData.tg_trigtuple = oldtuple = newtuple;
  LocTriggerData.tg_trigger = trigger;
  newtuple = ExecCallTriggerFunc(&LocTriggerData,
            i,
            relinfo->ri_TrigFunctions,
            relinfo->ri_TrigInstrument,
            GetPerTupleMemoryContext(estate));
  if (newtuple == ((void*)0))
  {
   if (should_free)
    heap_freetuple(oldtuple);
   return 0;
  }
  else if (newtuple != oldtuple)
  {
   ExecForceStoreHeapTuple(newtuple, slot, 0);

   if (should_free)
    heap_freetuple(oldtuple);


   newtuple = ((void*)0);
  }
 }

 return 1;
}
