
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_13__ {int numtriggers; TYPE_3__* triggers; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_14__ {int tg_event; TYPE_3__* tg_trigger; int * tg_newslot; int * tg_newtuple; int * tg_trigtuple; int * tg_trigslot; int * tg_newtable; int * tg_oldtable; int tg_relation; int type; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_15__ {int tgtype; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_16__ {int ri_TrigInstrument; int ri_TrigFunctions; int ri_RelationDesc; int ri_junkFilter; TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef int * HeapTuple ;
typedef int EState ;
typedef int EPQState ;
typedef int Bitmapset ;


 int Assert (int) ;
 int * ExecCallTriggerFunc (TYPE_2__*,int,int ,int ,int ) ;
 int ExecCopySlot (int *,int *) ;
 int * ExecFetchSlotHeapTuple (int *,int,int*) ;
 int * ExecFilterJunk (int ,int *) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int * ExecGetTriggerOldSlot (int *,TYPE_4__*) ;
 int ExecMaterializeSlot (int *) ;
 int ExecUpdateLockMode (int *,TYPE_4__*) ;
 int * GetAllUpdatedColumns (TYPE_4__*,int *) ;
 int GetPerTupleMemoryContext (int *) ;
 int GetTupleForTrigger (int *,int *,TYPE_4__*,int ,int ,int *,int **) ;
 int HeapTupleIsValid (int *) ;
 int ItemPointerIsValid (int ) ;
 int TRIGGER_EVENT_BEFORE ;
 int TRIGGER_EVENT_ROW ;
 int TRIGGER_EVENT_UPDATE ;
 int TRIGGER_TYPE_BEFORE ;
 int TRIGGER_TYPE_MATCHES (int ,int ,int ,int ) ;
 int TRIGGER_TYPE_ROW ;
 int TRIGGER_TYPE_UPDATE ;
 int T_TriggerData ;
 int TriggerEnabled (int *,TYPE_4__*,TYPE_3__*,int,int *,int *,int *) ;
 int heap_freetuple (int *) ;

bool
ExecBRUpdateTriggers(EState *estate, EPQState *epqstate,
      ResultRelInfo *relinfo,
      ItemPointer tupleid,
      HeapTuple fdw_trigtuple,
      TupleTableSlot *newslot)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 TupleTableSlot *oldslot = ExecGetTriggerOldSlot(estate, relinfo);
 HeapTuple newtuple = ((void*)0);
 HeapTuple trigtuple;
 bool should_free_trig = 0;
 bool should_free_new = 0;
 TriggerData LocTriggerData;
 int i;
 Bitmapset *updatedCols;
 LockTupleMode lockmode;


 lockmode = ExecUpdateLockMode(estate, relinfo);

 Assert(HeapTupleIsValid(fdw_trigtuple) ^ ItemPointerIsValid(tupleid));
 if (fdw_trigtuple == ((void*)0))
 {
  TupleTableSlot *epqslot_candidate = ((void*)0);


  if (!GetTupleForTrigger(estate, epqstate, relinfo, tupleid,
        lockmode, oldslot, &epqslot_candidate))
   return 0;
  if (epqslot_candidate != ((void*)0))
  {
   TupleTableSlot *epqslot_clean;

   epqslot_clean = ExecFilterJunk(relinfo->ri_junkFilter, epqslot_candidate);

   if (newslot != epqslot_clean)
    ExecCopySlot(newslot, epqslot_clean);
  }

  trigtuple = ExecFetchSlotHeapTuple(oldslot, 1, &should_free_trig);
 }
 else
 {
  ExecForceStoreHeapTuple(fdw_trigtuple, oldslot, 0);
  trigtuple = fdw_trigtuple;
 }

 LocTriggerData.type = T_TriggerData;
 LocTriggerData.tg_event = TRIGGER_EVENT_UPDATE |
  TRIGGER_EVENT_ROW |
  TRIGGER_EVENT_BEFORE;
 LocTriggerData.tg_relation = relinfo->ri_RelationDesc;
 LocTriggerData.tg_oldtable = ((void*)0);
 LocTriggerData.tg_newtable = ((void*)0);
 updatedCols = GetAllUpdatedColumns(relinfo, estate);
 for (i = 0; i < trigdesc->numtriggers; i++)
 {
  Trigger *trigger = &trigdesc->triggers[i];
  HeapTuple oldtuple;

  if (!TRIGGER_TYPE_MATCHES(trigger->tgtype,
          TRIGGER_TYPE_ROW,
          TRIGGER_TYPE_BEFORE,
          TRIGGER_TYPE_UPDATE))
   continue;
  if (!TriggerEnabled(estate, relinfo, trigger, LocTriggerData.tg_event,
       updatedCols, oldslot, newslot))
   continue;

  if (!newtuple)
   newtuple = ExecFetchSlotHeapTuple(newslot, 1, &should_free_new);

  LocTriggerData.tg_trigslot = oldslot;
  LocTriggerData.tg_trigtuple = trigtuple;
  LocTriggerData.tg_newtuple = oldtuple = newtuple;
  LocTriggerData.tg_newslot = newslot;
  LocTriggerData.tg_trigger = trigger;
  newtuple = ExecCallTriggerFunc(&LocTriggerData,
            i,
            relinfo->ri_TrigFunctions,
            relinfo->ri_TrigInstrument,
            GetPerTupleMemoryContext(estate));

  if (newtuple == ((void*)0))
  {
   if (should_free_trig)
    heap_freetuple(trigtuple);
   if (should_free_new)
    heap_freetuple(oldtuple);
   return 0;
  }
  else if (newtuple != oldtuple)
  {
   ExecForceStoreHeapTuple(newtuple, newslot, 0);







   if (should_free_trig && newtuple == trigtuple)
    ExecMaterializeSlot(newslot);

   if (should_free_new)
    heap_freetuple(oldtuple);


   newtuple = ((void*)0);
  }
 }
 if (should_free_trig)
  heap_freetuple(trigtuple);

 return 1;
}
