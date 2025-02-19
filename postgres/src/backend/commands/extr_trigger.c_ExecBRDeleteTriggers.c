
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_11__ {int numtriggers; TYPE_3__* triggers; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_12__ {int tg_event; TYPE_3__* tg_trigger; int * tg_trigtuple; int * tg_trigslot; int * tg_newtable; int * tg_oldtable; int * tg_newslot; int * tg_newtuple; int tg_relation; int type; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_13__ {int tgtype; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_14__ {int ri_TrigInstrument; int ri_TrigFunctions; int ri_RelationDesc; TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef int ItemPointer ;
typedef int * HeapTuple ;
typedef int EState ;
typedef int EPQState ;


 int Assert (int) ;
 int * ExecCallTriggerFunc (TYPE_2__*,int,int ,int ,int ) ;
 int * ExecFetchSlotHeapTuple (int *,int,int*) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int * ExecGetTriggerOldSlot (int *,TYPE_4__*) ;
 int GetPerTupleMemoryContext (int *) ;
 int GetTupleForTrigger (int *,int *,TYPE_4__*,int ,int ,int *,int **) ;
 int HeapTupleIsValid (int *) ;
 int ItemPointerIsValid (int ) ;
 int LockTupleExclusive ;
 int TRIGGER_EVENT_BEFORE ;
 int TRIGGER_EVENT_DELETE ;
 int TRIGGER_EVENT_ROW ;
 int TRIGGER_TYPE_BEFORE ;
 int TRIGGER_TYPE_DELETE ;
 int TRIGGER_TYPE_MATCHES (int ,int ,int ,int ) ;
 int TRIGGER_TYPE_ROW ;
 int T_TriggerData ;
 int TriggerEnabled (int *,TYPE_4__*,TYPE_3__*,int,int *,int *,int *) ;
 int heap_freetuple (int *) ;

bool
ExecBRDeleteTriggers(EState *estate, EPQState *epqstate,
      ResultRelInfo *relinfo,
      ItemPointer tupleid,
      HeapTuple fdw_trigtuple,
      TupleTableSlot **epqslot)
{
 TupleTableSlot *slot = ExecGetTriggerOldSlot(estate, relinfo);
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 bool result = 1;
 TriggerData LocTriggerData;
 HeapTuple trigtuple;
 bool should_free = 0;
 int i;

 Assert(HeapTupleIsValid(fdw_trigtuple) ^ ItemPointerIsValid(tupleid));
 if (fdw_trigtuple == ((void*)0))
 {
  TupleTableSlot *epqslot_candidate = ((void*)0);

  if (!GetTupleForTrigger(estate, epqstate, relinfo, tupleid,
        LockTupleExclusive, slot, &epqslot_candidate))
   return 0;






  if (epqslot_candidate != ((void*)0) && epqslot != ((void*)0))
  {
   *epqslot = epqslot_candidate;
   return 0;
  }

  trigtuple = ExecFetchSlotHeapTuple(slot, 1, &should_free);

 }
 else
 {
  trigtuple = fdw_trigtuple;
  ExecForceStoreHeapTuple(trigtuple, slot, 0);
 }

 LocTriggerData.type = T_TriggerData;
 LocTriggerData.tg_event = TRIGGER_EVENT_DELETE |
  TRIGGER_EVENT_ROW |
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
  HeapTuple newtuple;
  Trigger *trigger = &trigdesc->triggers[i];

  if (!TRIGGER_TYPE_MATCHES(trigger->tgtype,
          TRIGGER_TYPE_ROW,
          TRIGGER_TYPE_BEFORE,
          TRIGGER_TYPE_DELETE))
   continue;
  if (!TriggerEnabled(estate, relinfo, trigger, LocTriggerData.tg_event,
       ((void*)0), slot, ((void*)0)))
   continue;

  LocTriggerData.tg_trigslot = slot;
  LocTriggerData.tg_trigtuple = trigtuple;
  LocTriggerData.tg_trigger = trigger;
  newtuple = ExecCallTriggerFunc(&LocTriggerData,
            i,
            relinfo->ri_TrigFunctions,
            relinfo->ri_TrigInstrument,
            GetPerTupleMemoryContext(estate));
  if (newtuple == ((void*)0))
  {
   result = 0;
   break;
  }
  if (newtuple != trigtuple)
   heap_freetuple(newtuple);
 }
 if (should_free)
  heap_freetuple(trigtuple);

 return result;
}
