
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_9__ ;
typedef struct TYPE_53__ TYPE_8__ ;
typedef struct TYPE_52__ TYPE_7__ ;
typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_17__ ;
typedef struct TYPE_44__ TYPE_13__ ;
typedef struct TYPE_43__ TYPE_12__ ;
typedef struct TYPE_42__ TYPE_11__ ;
typedef struct TYPE_41__ TYPE_10__ ;


typedef int Tuplestorestate ;
struct TYPE_49__ {int tts_tid; } ;
typedef TYPE_4__ TupleTableSlot ;
struct TYPE_50__ {int attrMap; int outdesc; } ;
typedef TYPE_5__ TupleConversionMap ;
struct TYPE_51__ {int numtriggers; TYPE_7__* triggers; int trig_update_after_row; int trig_insert_after_row; int trig_delete_after_row; } ;
typedef TYPE_6__ TriggerDesc ;
struct TYPE_52__ {scalar_t__ tgfoid; scalar_t__ tgnewtable; scalar_t__ tgoldtable; int tgoid; scalar_t__ tginitdeferred; scalar_t__ tgdeferrable; int tgconstrindid; int tgtype; } ;
typedef TYPE_7__ Trigger ;
struct TYPE_53__ {int tcs_delete_old_table; int tcs_update_old_table; int tcs_update_new_table; int tcs_insert_new_table; TYPE_3__* tcs_private; TYPE_5__* tcs_map; TYPE_4__* tcs_original_insert_tuple; } ;
typedef TYPE_8__ TransitionCaptureState ;
struct TYPE_54__ {TYPE_6__* ri_TrigDesc; TYPE_10__* ri_RelationDesc; } ;
struct TYPE_48__ {TYPE_4__* storeslot; int * new_tuplestore; int * old_tuplestore; } ;
struct TYPE_47__ {char relkind; } ;
struct TYPE_46__ {int events; } ;
struct TYPE_45__ {size_t query_depth; size_t maxquerydepth; TYPE_1__* query_stack; } ;
struct TYPE_44__ {int ate_flags; int ate_ctid2; int ate_ctid1; } ;
struct TYPE_43__ {int ats_event; TYPE_3__* ats_table; scalar_t__ ats_firing_id; int ats_relid; int ats_tgoid; } ;
struct TYPE_42__ {int es_tupleTable; } ;
struct TYPE_41__ {TYPE_2__* rd_rel; } ;
typedef TYPE_9__ ResultRelInfo ;
typedef TYPE_10__* Relation ;
typedef int List ;
typedef TYPE_11__ EState ;
typedef int Bitmapset ;
typedef TYPE_12__ AfterTriggerSharedData ;
typedef TYPE_13__ AfterTriggerEventData ;


 int AFTER_TRIGGER_1CTID ;
 int AFTER_TRIGGER_2CTID ;
 int AFTER_TRIGGER_DEFERRABLE ;
 int AFTER_TRIGGER_FDW_FETCH ;
 int AFTER_TRIGGER_FDW_REUSE ;
 int AFTER_TRIGGER_INITDEFERRED ;
 int AfterTriggerEnlargeQueryState () ;
 int Assert (int) ;
 int CMD_DELETE ;
 int CMD_INSERT ;
 int CMD_UPDATE ;
 int ERROR ;
 TYPE_4__* ExecAllocTableSlot (int *,int ,int *) ;
 scalar_t__ F_UNIQUE_KEY_RECHECK ;
 int * GetCurrentFDWTuplestore () ;
 int ItemPointerCopy (int *,int *) ;
 int ItemPointerSetInvalid (int *) ;
 char RELKIND_FOREIGN_TABLE ;
 int RI_FKey_fk_upd_check_required (TYPE_7__*,TYPE_10__*,TYPE_4__*,TYPE_4__*) ;
 int RI_FKey_pk_upd_check_required (TYPE_7__*,TYPE_10__*,TYPE_4__*,TYPE_4__*) ;
 int RI_FKey_trigger_type (scalar_t__) ;



 int RelationGetRelid (TYPE_10__*) ;


 int TRIGGER_EVENT_OPMASK ;
 int TRIGGER_EVENT_ROW ;


 scalar_t__ TRIGGER_FIRED_BY_DELETE (int) ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int) ;
 int TRIGGER_TYPE_AFTER ;
 int TRIGGER_TYPE_DELETE ;
 int TRIGGER_TYPE_INSERT ;
 int TRIGGER_TYPE_MATCHES (int ,int,int ,int) ;
 int TRIGGER_TYPE_ROW ;
 int TRIGGER_TYPE_STATEMENT ;
 int TRIGGER_TYPE_TRUNCATE ;
 int TRIGGER_TYPE_UPDATE ;
 int TTSOpsVirtual ;
 int TriggerEnabled (TYPE_11__*,TYPE_9__*,TYPE_7__*,int,int *,TYPE_4__*,TYPE_4__*) ;
 int TupIsNull (TYPE_4__*) ;
 int afterTriggerAddEvent (int *,TYPE_13__*,TYPE_12__*) ;
 TYPE_17__ afterTriggers ;
 int cancel_prior_stmt_triggers (int ,int ,int) ;
 int elog (int ,char*,...) ;
 int execute_attr_map_slot (int ,TYPE_4__*,TYPE_4__*) ;
 int list_member_oid (int *,int ) ;
 int tuplestore_puttupleslot (int *,TYPE_4__*) ;

__attribute__((used)) static void
AfterTriggerSaveEvent(EState *estate, ResultRelInfo *relinfo,
       int event, bool row_trigger,
       TupleTableSlot *oldslot, TupleTableSlot *newslot,
       List *recheckIndexes, Bitmapset *modifiedCols,
       TransitionCaptureState *transition_capture)
{
 Relation rel = relinfo->ri_RelationDesc;
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 AfterTriggerEventData new_event;
 AfterTriggerSharedData new_shared;
 char relkind = rel->rd_rel->relkind;
 int tgtype_event;
 int tgtype_level;
 int i;
 Tuplestorestate *fdw_tuplestore = ((void*)0);






 if (afterTriggers.query_depth < 0)
  elog(ERROR, "AfterTriggerSaveEvent() called outside of query");


 if (afterTriggers.query_depth >= afterTriggers.maxquerydepth)
  AfterTriggerEnlargeQueryState();





 if (row_trigger && transition_capture != ((void*)0))
 {
  TupleTableSlot *original_insert_tuple = transition_capture->tcs_original_insert_tuple;
  TupleConversionMap *map = transition_capture->tcs_map;
  bool delete_old_table = transition_capture->tcs_delete_old_table;
  bool update_old_table = transition_capture->tcs_update_old_table;
  bool update_new_table = transition_capture->tcs_update_new_table;
  bool insert_new_table = transition_capture->tcs_insert_new_table;
  Assert(!(event == 131 && delete_old_table &&
     TupIsNull(oldslot)));
  Assert(!(event == 130 && insert_new_table &&
     TupIsNull(newslot)));

  if (!TupIsNull(oldslot) &&
   ((event == 131 && delete_old_table) ||
    (event == 128 && update_old_table)))
  {
   Tuplestorestate *old_tuplestore;

   old_tuplestore = transition_capture->tcs_private->old_tuplestore;

   if (map != ((void*)0))
   {
    TupleTableSlot *storeslot;

    storeslot = transition_capture->tcs_private->storeslot;
    if (!storeslot)
    {
     storeslot = ExecAllocTableSlot(&estate->es_tupleTable,
               map->outdesc,
               &TTSOpsVirtual);
     transition_capture->tcs_private->storeslot = storeslot;
    }

    execute_attr_map_slot(map->attrMap, oldslot, storeslot);
    tuplestore_puttupleslot(old_tuplestore, storeslot);
   }
   else
    tuplestore_puttupleslot(old_tuplestore, oldslot);
  }
  if (!TupIsNull(newslot) &&
   ((event == 130 && insert_new_table) ||
    (event == 128 && update_new_table)))
  {
   Tuplestorestate *new_tuplestore;

   new_tuplestore = transition_capture->tcs_private->new_tuplestore;

   if (original_insert_tuple != ((void*)0))
    tuplestore_puttupleslot(new_tuplestore,
          original_insert_tuple);
   else if (map != ((void*)0))
   {
    TupleTableSlot *storeslot;

    storeslot = transition_capture->tcs_private->storeslot;

    if (!storeslot)
    {
     storeslot = ExecAllocTableSlot(&estate->es_tupleTable,
               map->outdesc,
               &TTSOpsVirtual);
     transition_capture->tcs_private->storeslot = storeslot;
    }

    execute_attr_map_slot(map->attrMap, newslot, storeslot);
    tuplestore_puttupleslot(new_tuplestore, storeslot);
   }
   else
    tuplestore_puttupleslot(new_tuplestore, newslot);
  }
  if (trigdesc == ((void*)0) ||
   (event == 131 && !trigdesc->trig_delete_after_row) ||
   (event == 130 && !trigdesc->trig_insert_after_row) ||
   (event == 128 && !trigdesc->trig_update_after_row) ||
   (event == 128 && (TupIsNull(oldslot) ^ TupIsNull(newslot))))
   return;
 }
 switch (event)
 {
  case 130:
   tgtype_event = TRIGGER_TYPE_INSERT;
   if (row_trigger)
   {
    Assert(oldslot == ((void*)0));
    Assert(newslot != ((void*)0));
    ItemPointerCopy(&(newslot->tts_tid), &(new_event.ate_ctid1));
    ItemPointerSetInvalid(&(new_event.ate_ctid2));
   }
   else
   {
    Assert(oldslot == ((void*)0));
    Assert(newslot == ((void*)0));
    ItemPointerSetInvalid(&(new_event.ate_ctid1));
    ItemPointerSetInvalid(&(new_event.ate_ctid2));
    cancel_prior_stmt_triggers(RelationGetRelid(rel),
             CMD_INSERT, event);
   }
   break;
  case 131:
   tgtype_event = TRIGGER_TYPE_DELETE;
   if (row_trigger)
   {
    Assert(oldslot != ((void*)0));
    Assert(newslot == ((void*)0));
    ItemPointerCopy(&(oldslot->tts_tid), &(new_event.ate_ctid1));
    ItemPointerSetInvalid(&(new_event.ate_ctid2));
   }
   else
   {
    Assert(oldslot == ((void*)0));
    Assert(newslot == ((void*)0));
    ItemPointerSetInvalid(&(new_event.ate_ctid1));
    ItemPointerSetInvalid(&(new_event.ate_ctid2));
    cancel_prior_stmt_triggers(RelationGetRelid(rel),
             CMD_DELETE, event);
   }
   break;
  case 128:
   tgtype_event = TRIGGER_TYPE_UPDATE;
   if (row_trigger)
   {
    Assert(oldslot != ((void*)0));
    Assert(newslot != ((void*)0));
    ItemPointerCopy(&(oldslot->tts_tid), &(new_event.ate_ctid1));
    ItemPointerCopy(&(newslot->tts_tid), &(new_event.ate_ctid2));
   }
   else
   {
    Assert(oldslot == ((void*)0));
    Assert(newslot == ((void*)0));
    ItemPointerSetInvalid(&(new_event.ate_ctid1));
    ItemPointerSetInvalid(&(new_event.ate_ctid2));
    cancel_prior_stmt_triggers(RelationGetRelid(rel),
             CMD_UPDATE, event);
   }
   break;
  case 129:
   tgtype_event = TRIGGER_TYPE_TRUNCATE;
   Assert(oldslot == ((void*)0));
   Assert(newslot == ((void*)0));
   ItemPointerSetInvalid(&(new_event.ate_ctid1));
   ItemPointerSetInvalid(&(new_event.ate_ctid2));
   break;
  default:
   elog(ERROR, "invalid after-trigger event code: %d", event);
   tgtype_event = 0;
   break;
 }

 if (!(relkind == RELKIND_FOREIGN_TABLE && row_trigger))
  new_event.ate_flags = (row_trigger && event == 128) ?
   AFTER_TRIGGER_2CTID : AFTER_TRIGGER_1CTID;


 tgtype_level = (row_trigger ? TRIGGER_TYPE_ROW : TRIGGER_TYPE_STATEMENT);

 for (i = 0; i < trigdesc->numtriggers; i++)
 {
  Trigger *trigger = &trigdesc->triggers[i];

  if (!TRIGGER_TYPE_MATCHES(trigger->tgtype,
          tgtype_level,
          TRIGGER_TYPE_AFTER,
          tgtype_event))
   continue;
  if (!TriggerEnabled(estate, relinfo, trigger, event,
       modifiedCols, oldslot, newslot))
   continue;

  if (relkind == RELKIND_FOREIGN_TABLE && row_trigger)
  {
   if (fdw_tuplestore == ((void*)0))
   {
    fdw_tuplestore = GetCurrentFDWTuplestore();
    new_event.ate_flags = AFTER_TRIGGER_FDW_FETCH;
   }
   else

    new_event.ate_flags = AFTER_TRIGGER_FDW_REUSE;
  }






  if (TRIGGER_FIRED_BY_UPDATE(event) || TRIGGER_FIRED_BY_DELETE(event))
  {
   switch (RI_FKey_trigger_type(trigger->tgfoid))
   {
    case 132:

     if (!RI_FKey_pk_upd_check_required(trigger, rel,
                oldslot, newslot))
     {

      continue;
     }
     break;

    case 134:

     if (!RI_FKey_fk_upd_check_required(trigger, rel,
                oldslot, newslot))
     {

      continue;
     }
     break;

    case 133:

     break;
   }
  }






  if (trigger->tgfoid == F_UNIQUE_KEY_RECHECK)
  {
   if (!list_member_oid(recheckIndexes, trigger->tgconstrindid))
    continue;
  }






  new_shared.ats_event =
   (event & TRIGGER_EVENT_OPMASK) |
   (row_trigger ? TRIGGER_EVENT_ROW : 0) |
   (trigger->tgdeferrable ? AFTER_TRIGGER_DEFERRABLE : 0) |
   (trigger->tginitdeferred ? AFTER_TRIGGER_INITDEFERRED : 0);
  new_shared.ats_tgoid = trigger->tgoid;
  new_shared.ats_relid = RelationGetRelid(rel);
  new_shared.ats_firing_id = 0;
  if ((trigger->tgoldtable || trigger->tgnewtable) &&
   transition_capture != ((void*)0))
   new_shared.ats_table = transition_capture->tcs_private;
  else
   new_shared.ats_table = ((void*)0);

  afterTriggerAddEvent(&afterTriggers.query_stack[afterTriggers.query_depth].events,
        &new_event, &new_shared);
 }






 if (fdw_tuplestore)
 {
  if (oldslot != ((void*)0))
   tuplestore_puttupleslot(fdw_tuplestore, oldslot);
  if (newslot != ((void*)0))
   tuplestore_puttupleslot(fdw_tuplestore, newslot);
 }
}
