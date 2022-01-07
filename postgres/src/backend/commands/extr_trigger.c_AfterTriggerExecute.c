
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef int TupleTableSlot ;
struct TYPE_18__ {int numtriggers; TYPE_1__* triggers; } ;
typedef TYPE_3__ TriggerDesc ;
struct TYPE_19__ {int tg_event; int * tg_newslot; int * tg_trigslot; int * tg_newtuple; int * tg_trigtuple; int tg_relation; int type; int * tg_newtable; TYPE_1__* tg_trigger; int tg_oldtable; } ;
typedef TYPE_4__ TriggerData ;
struct TYPE_22__ {int ate_flags; int ate_ctid2; int ate_ctid1; } ;
struct TYPE_21__ {scalar_t__ ats_tgoid; int ats_event; TYPE_2__* ats_table; } ;
struct TYPE_20__ {int ri_RelationDesc; } ;
struct TYPE_17__ {int closed; int * new_tuplestore; int old_tuplestore; } ;
struct TYPE_16__ {scalar_t__ tgoid; scalar_t__ tgnewtable; scalar_t__ tgoldtable; } ;
typedef TYPE_5__ ResultRelInfo ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int Instrumentation ;
typedef int * HeapTuple ;
typedef int FmgrInfo ;
typedef int EState ;
typedef TYPE_6__* AfterTriggerShared ;
typedef TYPE_7__* AfterTriggerEvent ;


 int AFTER_TRIGGER_2CTID ;


 int AFTER_TRIGGER_TUP_BITS ;
 int ERROR ;
 int * ExecCallTriggerFunc (TYPE_4__*,int,int *,int *,int ) ;
 int ExecClearTuple (int *) ;
 int * ExecFetchSlotHeapTuple (int *,int,int*) ;
 int * ExecGetTriggerNewSlot (int *,TYPE_5__*) ;
 int * ExecGetTriggerOldSlot (int *,TYPE_5__*) ;
 int * GetCurrentFDWTuplestore () ;
 TYPE_6__* GetTriggerSharedData (TYPE_7__*) ;
 int InstrStartNode (int *) ;
 int InstrStopNode (int *,int) ;
 int ItemPointerIsValid (int *) ;
 int MemoryContextReset (int ) ;
 int SnapshotAny ;
 int TRIGGER_EVENT_OPMASK ;
 int TRIGGER_EVENT_ROW ;
 int TRIGGER_EVENT_UPDATE ;
 int T_TriggerData ;
 int elog (int ,char*,...) ;
 int heap_freetuple (int *) ;
 int table_tuple_fetch_row_version (int ,int *,int ,int *) ;
 int tuplestore_gettupleslot (int *,int,int,int *) ;

__attribute__((used)) static void
AfterTriggerExecute(EState *estate,
     AfterTriggerEvent event,
     ResultRelInfo *relInfo,
     TriggerDesc *trigdesc,
     FmgrInfo *finfo, Instrumentation *instr,
     MemoryContext per_tuple_context,
     TupleTableSlot *trig_tuple_slot1,
     TupleTableSlot *trig_tuple_slot2)
{
 Relation rel = relInfo->ri_RelationDesc;
 AfterTriggerShared evtshared = GetTriggerSharedData(event);
 Oid tgoid = evtshared->ats_tgoid;
 TriggerData LocTriggerData;
 HeapTuple rettuple;
 int tgindx;
 bool should_free_trig = 0;
 bool should_free_new = 0;




 LocTriggerData.tg_trigger = ((void*)0);
 LocTriggerData.tg_trigslot = ((void*)0);
 LocTriggerData.tg_newslot = ((void*)0);

 for (tgindx = 0; tgindx < trigdesc->numtriggers; tgindx++)
 {
  if (trigdesc->triggers[tgindx].tgoid == tgoid)
  {
   LocTriggerData.tg_trigger = &(trigdesc->triggers[tgindx]);
   break;
  }
 }
 if (LocTriggerData.tg_trigger == ((void*)0))
  elog(ERROR, "could not find trigger %u", tgoid);





 if (instr)
  InstrStartNode(instr + tgindx);




 switch (event->ate_flags & AFTER_TRIGGER_TUP_BITS)
 {
  case 129:
   {
    Tuplestorestate *fdw_tuplestore = GetCurrentFDWTuplestore();

    if (!tuplestore_gettupleslot(fdw_tuplestore, 1, 0,
            trig_tuple_slot1))
     elog(ERROR, "failed to fetch tuple1 for AFTER trigger");

    if ((evtshared->ats_event & TRIGGER_EVENT_OPMASK) ==
     TRIGGER_EVENT_UPDATE &&
     !tuplestore_gettupleslot(fdw_tuplestore, 1, 0,
            trig_tuple_slot2))
     elog(ERROR, "failed to fetch tuple2 for AFTER trigger");
   }

  case 128:
   LocTriggerData.tg_trigslot = trig_tuple_slot1;
   LocTriggerData.tg_trigtuple =
    ExecFetchSlotHeapTuple(trig_tuple_slot1, 1, &should_free_trig);

   LocTriggerData.tg_newslot = trig_tuple_slot2;
   LocTriggerData.tg_newtuple =
    ((evtshared->ats_event & TRIGGER_EVENT_OPMASK) ==
     TRIGGER_EVENT_UPDATE) ?
    ExecFetchSlotHeapTuple(trig_tuple_slot2, 1, &should_free_new) : ((void*)0);

   break;

  default:
   if (ItemPointerIsValid(&(event->ate_ctid1)))
   {
    LocTriggerData.tg_trigslot = ExecGetTriggerOldSlot(estate, relInfo);

    if (!table_tuple_fetch_row_version(rel, &(event->ate_ctid1),
               SnapshotAny,
               LocTriggerData.tg_trigslot))
     elog(ERROR, "failed to fetch tuple1 for AFTER trigger");
    LocTriggerData.tg_trigtuple =
     ExecFetchSlotHeapTuple(LocTriggerData.tg_trigslot, 0, &should_free_trig);
   }
   else
   {
    LocTriggerData.tg_trigtuple = ((void*)0);
   }


   if ((event->ate_flags & AFTER_TRIGGER_TUP_BITS) ==
    AFTER_TRIGGER_2CTID &&
    ItemPointerIsValid(&(event->ate_ctid2)))
   {
    LocTriggerData.tg_newslot = ExecGetTriggerNewSlot(estate, relInfo);

    if (!table_tuple_fetch_row_version(rel, &(event->ate_ctid2),
               SnapshotAny,
               LocTriggerData.tg_newslot))
     elog(ERROR, "failed to fetch tuple2 for AFTER trigger");
    LocTriggerData.tg_newtuple =
     ExecFetchSlotHeapTuple(LocTriggerData.tg_newslot, 0, &should_free_new);
   }
   else
   {
    LocTriggerData.tg_newtuple = ((void*)0);
   }
 }
 LocTriggerData.tg_oldtable = LocTriggerData.tg_newtable = ((void*)0);
 if (evtshared->ats_table)
 {
  if (LocTriggerData.tg_trigger->tgoldtable)
  {
   LocTriggerData.tg_oldtable = evtshared->ats_table->old_tuplestore;
   evtshared->ats_table->closed = 1;
  }

  if (LocTriggerData.tg_trigger->tgnewtable)
  {
   LocTriggerData.tg_newtable = evtshared->ats_table->new_tuplestore;
   evtshared->ats_table->closed = 1;
  }
 }




 LocTriggerData.type = T_TriggerData;
 LocTriggerData.tg_event =
  evtshared->ats_event & (TRIGGER_EVENT_OPMASK | TRIGGER_EVENT_ROW);
 LocTriggerData.tg_relation = rel;

 MemoryContextReset(per_tuple_context);





 rettuple = ExecCallTriggerFunc(&LocTriggerData,
           tgindx,
           finfo,
           ((void*)0),
           per_tuple_context);
 if (rettuple != ((void*)0) &&
  rettuple != LocTriggerData.tg_trigtuple &&
  rettuple != LocTriggerData.tg_newtuple)
  heap_freetuple(rettuple);




 if (should_free_trig)
  heap_freetuple(LocTriggerData.tg_trigtuple);
 if (should_free_new)
  heap_freetuple(LocTriggerData.tg_newtuple);

 if (LocTriggerData.tg_trigslot)
  ExecClearTuple(LocTriggerData.tg_trigslot);
 if (LocTriggerData.tg_newslot)
  ExecClearTuple(LocTriggerData.tg_newslot);





 if (instr)
  InstrStopNode(instr + tgindx, 1);
}
