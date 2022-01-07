
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int trig ;
typedef int TupleTableSlot ;
struct TYPE_8__ {int tg_event; TYPE_2__* tg_trigger; int * tg_newslot; int * tg_newtuple; int * tg_trigslot; int tg_trigtuple; int tg_relation; int type; } ;
typedef TYPE_1__ TriggerData ;
struct TYPE_9__ {char* tgname; int tgisinternal; int tgdeferrable; int tginitdeferred; int * context; void* tgconstraint; void* tgconstrindid; int tgconstrrelid; int tgenabled; int tgoid; } ;
typedef TYPE_2__ Trigger ;
typedef int TableScanDesc ;
typedef int Snapshot ;
typedef int Relation ;
typedef void* Oid ;
typedef int Node ;
typedef int MemoryContext ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CurrentMemoryContext ;
 int DEBUG1 ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int ExecFetchSlotHeapTuple (int *,int,int *) ;
 int ForwardScanDirection ;
 int GetLatestSnapshot () ;
 int InvalidOid ;
 int LOCAL_FCINFO (TYPE_2__*,int ) ;
 int MemSet (TYPE_2__*,int ,int) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int RI_FKey_check_ins (TYPE_2__*) ;
 scalar_t__ RI_Initial_Check (TYPE_2__*,int ,int ) ;
 int RegisterSnapshot (int ) ;
 int RelationGetRelid (int ) ;
 int SizeForFunctionCallInfo (int ) ;
 int TRIGGER_EVENT_INSERT ;
 int TRIGGER_EVENT_ROW ;
 int TRIGGER_FIRES_ON_ORIGIN ;
 int T_TriggerData ;
 int UnregisterSnapshot (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 TYPE_2__* fcinfo ;
 int table_beginscan (int ,int ,int ,int *) ;
 int table_endscan (int ) ;
 scalar_t__ table_scan_getnextslot (int ,int ,int *) ;
 int * table_slot_create (int ,int *) ;

__attribute__((used)) static void
validateForeignKeyConstraint(char *conname,
        Relation rel,
        Relation pkrel,
        Oid pkindOid,
        Oid constraintOid)
{
 TupleTableSlot *slot;
 TableScanDesc scan;
 Trigger trig;
 Snapshot snapshot;
 MemoryContext oldcxt;
 MemoryContext perTupCxt;

 ereport(DEBUG1,
   (errmsg("validating foreign key constraint \"%s\"", conname)));




 MemSet(&trig, 0, sizeof(trig));
 trig.tgoid = InvalidOid;
 trig.tgname = conname;
 trig.tgenabled = TRIGGER_FIRES_ON_ORIGIN;
 trig.tgisinternal = 1;
 trig.tgconstrrelid = RelationGetRelid(pkrel);
 trig.tgconstrindid = pkindOid;
 trig.tgconstraint = constraintOid;
 trig.tgdeferrable = 0;
 trig.tginitdeferred = 0;






 if (RI_Initial_Check(&trig, rel, pkrel))
  return;






 snapshot = RegisterSnapshot(GetLatestSnapshot());
 slot = table_slot_create(rel, ((void*)0));
 scan = table_beginscan(rel, snapshot, 0, ((void*)0));

 perTupCxt = AllocSetContextCreate(CurrentMemoryContext,
           "validateForeignKeyConstraint",
           ALLOCSET_SMALL_SIZES);
 oldcxt = MemoryContextSwitchTo(perTupCxt);

 while (table_scan_getnextslot(scan, ForwardScanDirection, slot))
 {
  LOCAL_FCINFO(fcinfo, 0);
  TriggerData trigdata;

  CHECK_FOR_INTERRUPTS();






  MemSet(fcinfo, 0, SizeForFunctionCallInfo(0));




  trigdata.type = T_TriggerData;
  trigdata.tg_event = TRIGGER_EVENT_INSERT | TRIGGER_EVENT_ROW;
  trigdata.tg_relation = rel;
  trigdata.tg_trigtuple = ExecFetchSlotHeapTuple(slot, 0, ((void*)0));
  trigdata.tg_trigslot = slot;
  trigdata.tg_newtuple = ((void*)0);
  trigdata.tg_newslot = ((void*)0);
  trigdata.tg_trigger = &trig;

  fcinfo->context = (Node *) &trigdata;

  RI_FKey_check_ins(fcinfo);

  MemoryContextReset(perTupCxt);
 }

 MemoryContextSwitchTo(oldcxt);
 MemoryContextDelete(perTupCxt);
 table_endscan(scan);
 UnregisterSnapshot(snapshot);
 ExecDropSingleTupleTableSlot(slot);
}
