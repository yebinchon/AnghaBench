
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_85__ TYPE_9__ ;
typedef struct TYPE_84__ TYPE_8__ ;
typedef struct TYPE_83__ TYPE_7__ ;
typedef struct TYPE_82__ TYPE_6__ ;
typedef struct TYPE_81__ TYPE_5__ ;
typedef struct TYPE_80__ TYPE_4__ ;
typedef struct TYPE_79__ TYPE_3__ ;
typedef struct TYPE_78__ TYPE_2__ ;
typedef struct TYPE_77__ TYPE_24__ ;
typedef struct TYPE_76__ TYPE_1__ ;
typedef struct TYPE_75__ TYPE_11__ ;
typedef struct TYPE_74__ TYPE_10__ ;


typedef int uint32 ;
typedef int WCOKind ;
struct TYPE_81__ {int tts_tid; void* tts_tableOid; } ;
typedef TYPE_5__ TupleTableSlot ;
struct TYPE_82__ {scalar_t__ tcs_update_new_table; } ;
typedef TYPE_6__ TransitionCaptureState ;
struct TYPE_77__ {scalar_t__ plan; } ;
struct TYPE_85__ {scalar_t__ operation; TYPE_6__* mt_transition_capture; TYPE_24__ ps; } ;
struct TYPE_84__ {TYPE_3__* rd_att; } ;
struct TYPE_83__ {scalar_t__ ri_NumIndices; scalar_t__ ri_projectReturning; int * ri_WithCheckOptions; int * ri_onConflictArbiterIndexes; TYPE_4__* ri_TrigDesc; int * ri_PartitionRoot; scalar_t__ ri_PartitionCheck; TYPE_8__* ri_RelationDesc; TYPE_1__* ri_FdwRoutine; } ;
struct TYPE_80__ {scalar_t__ trig_insert_before_row; scalar_t__ trig_insert_instead_row; } ;
struct TYPE_79__ {TYPE_2__* constr; } ;
struct TYPE_78__ {scalar_t__ has_generated_stored; } ;
struct TYPE_76__ {TYPE_5__* (* ExecForeignInsert ) (TYPE_11__*,TYPE_7__*,TYPE_5__*,TYPE_5__*) ;} ;
struct TYPE_75__ {int es_processed; int es_output_cid; TYPE_7__* es_result_relation_info; } ;
struct TYPE_74__ {scalar_t__ onConflictAction; } ;
typedef TYPE_7__ ResultRelInfo ;
typedef TYPE_8__* Relation ;
typedef scalar_t__ OnConflictAction ;
typedef TYPE_9__ ModifyTableState ;
typedef TYPE_10__ ModifyTable ;
typedef int List ;
typedef int ItemPointerData ;
typedef TYPE_11__ EState ;


 int Assert (int) ;
 scalar_t__ CMD_UPDATE ;
 int ExecARInsertTriggers (TYPE_11__*,TYPE_7__*,TYPE_5__*,int *,TYPE_6__*) ;
 int ExecARUpdateTriggers (TYPE_11__*,TYPE_7__*,int *,int *,TYPE_5__*,int *,TYPE_6__*) ;
 int ExecBRInsertTriggers (TYPE_11__*,TYPE_7__*,TYPE_5__*) ;
 int ExecCheckIndexConstraints (TYPE_5__*,TYPE_11__*,int *,int *) ;
 int ExecCheckTIDVisible (TYPE_11__*,TYPE_7__*,int *,int ) ;
 int ExecComputeStoredGenerated (TYPE_11__*,TYPE_5__*) ;
 int ExecConstraints (TYPE_7__*,TYPE_5__*,TYPE_11__*) ;
 int ExecGetReturningSlot (TYPE_11__*,TYPE_7__*) ;
 int ExecIRInsertTriggers (TYPE_11__*,TYPE_7__*,TYPE_5__*) ;
 int * ExecInsertIndexTuples (TYPE_5__*,TYPE_11__*,int,int*,int *) ;
 int ExecMaterializeSlot (TYPE_5__*) ;
 scalar_t__ ExecOnConflictUpdate (TYPE_9__*,TYPE_7__*,int *,TYPE_5__*,TYPE_5__*,TYPE_11__*,int,TYPE_5__**) ;
 int ExecPartitionCheck (TYPE_7__*,TYPE_5__*,TYPE_11__*,int) ;
 TYPE_5__* ExecProcessReturning (TYPE_7__*,TYPE_5__*,TYPE_5__*) ;
 int ExecWithCheckOptions (int ,TYPE_7__*,TYPE_5__*,TYPE_11__*) ;
 int GetCurrentTransactionId () ;
 int InstrCountTuples2 (TYPE_24__*,int) ;
 int * NIL ;
 scalar_t__ ONCONFLICT_NONE ;
 scalar_t__ ONCONFLICT_NOTHING ;
 scalar_t__ ONCONFLICT_UPDATE ;
 void* RelationGetRelid (TYPE_8__*) ;
 int SpeculativeInsertionLockAcquire (int ) ;
 int SpeculativeInsertionLockRelease (int ) ;
 int WCO_RLS_INSERT_CHECK ;
 int WCO_RLS_UPDATE_CHECK ;
 int WCO_VIEW_CHECK ;
 int list_free (int *) ;
 int setLastTid (int *) ;
 TYPE_5__* stub1 (TYPE_11__*,TYPE_7__*,TYPE_5__*,TYPE_5__*) ;
 int table_tuple_complete_speculative (TYPE_8__*,TYPE_5__*,int ,int) ;
 int table_tuple_insert (TYPE_8__*,TYPE_5__*,int ,int ,int *) ;
 int table_tuple_insert_speculative (TYPE_8__*,TYPE_5__*,int ,int ,int *,int ) ;

__attribute__((used)) static TupleTableSlot *
ExecInsert(ModifyTableState *mtstate,
     TupleTableSlot *slot,
     TupleTableSlot *planSlot,
     EState *estate,
     bool canSetTag)
{
 ResultRelInfo *resultRelInfo;
 Relation resultRelationDesc;
 List *recheckIndexes = NIL;
 TupleTableSlot *result = ((void*)0);
 TransitionCaptureState *ar_insert_trig_tcs;
 ModifyTable *node = (ModifyTable *) mtstate->ps.plan;
 OnConflictAction onconflict = node->onConflictAction;

 ExecMaterializeSlot(slot);




 resultRelInfo = estate->es_result_relation_info;
 resultRelationDesc = resultRelInfo->ri_RelationDesc;
 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_insert_before_row)
 {
  if (!ExecBRInsertTriggers(estate, resultRelInfo, slot))
   return ((void*)0);
 }


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_insert_instead_row)
 {
  if (!ExecIRInsertTriggers(estate, resultRelInfo, slot))
   return ((void*)0);
 }
 else if (resultRelInfo->ri_FdwRoutine)
 {



  if (resultRelationDesc->rd_att->constr &&
   resultRelationDesc->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);




  slot = resultRelInfo->ri_FdwRoutine->ExecForeignInsert(estate,
                  resultRelInfo,
                  slot,
                  planSlot);

  if (slot == ((void*)0))
   return ((void*)0);






  slot->tts_tableOid = RelationGetRelid(resultRelInfo->ri_RelationDesc);

 }
 else
 {
  WCOKind wco_kind;





  slot->tts_tableOid = RelationGetRelid(resultRelationDesc);




  if (resultRelationDesc->rd_att->constr &&
   resultRelationDesc->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);
  wco_kind = (mtstate->operation == CMD_UPDATE) ?
   WCO_RLS_UPDATE_CHECK : WCO_RLS_INSERT_CHECK;





  if (resultRelInfo->ri_WithCheckOptions != NIL)
   ExecWithCheckOptions(wco_kind, resultRelInfo, slot, estate);




  if (resultRelationDesc->rd_att->constr)
   ExecConstraints(resultRelInfo, slot, estate);






  if (resultRelInfo->ri_PartitionCheck &&
   (resultRelInfo->ri_PartitionRoot == ((void*)0) ||
    (resultRelInfo->ri_TrigDesc &&
     resultRelInfo->ri_TrigDesc->trig_insert_before_row)))
   ExecPartitionCheck(resultRelInfo, slot, estate, 1);

  if (onconflict != ONCONFLICT_NONE && resultRelInfo->ri_NumIndices > 0)
  {

   uint32 specToken;
   ItemPointerData conflictTid;
   bool specConflict;
   List *arbiterIndexes;

   arbiterIndexes = resultRelInfo->ri_onConflictArbiterIndexes;
 vlock:
   specConflict = 0;
   if (!ExecCheckIndexConstraints(slot, estate, &conflictTid,
             arbiterIndexes))
   {

    if (onconflict == ONCONFLICT_UPDATE)
    {






     TupleTableSlot *returning = ((void*)0);

     if (ExecOnConflictUpdate(mtstate, resultRelInfo,
            &conflictTid, planSlot, slot,
            estate, canSetTag, &returning))
     {
      InstrCountTuples2(&mtstate->ps, 1);
      return returning;
     }
     else
      goto vlock;
    }
    else
    {
     Assert(onconflict == ONCONFLICT_NOTHING);
     ExecCheckTIDVisible(estate, resultRelInfo, &conflictTid,
          ExecGetReturningSlot(estate, resultRelInfo));
     InstrCountTuples2(&mtstate->ps, 1);
     return ((void*)0);
    }
   }







   specToken = SpeculativeInsertionLockAcquire(GetCurrentTransactionId());


   table_tuple_insert_speculative(resultRelationDesc, slot,
             estate->es_output_cid,
             0,
             ((void*)0),
             specToken);


   recheckIndexes = ExecInsertIndexTuples(slot, estate, 1,
               &specConflict,
               arbiterIndexes);


   table_tuple_complete_speculative(resultRelationDesc, slot,
            specToken, !specConflict);
   SpeculativeInsertionLockRelease(GetCurrentTransactionId());






   if (specConflict)
   {
    list_free(recheckIndexes);
    goto vlock;
   }


  }
  else
  {

   table_tuple_insert(resultRelationDesc, slot,
          estate->es_output_cid,
          0, ((void*)0));


   if (resultRelInfo->ri_NumIndices > 0)
    recheckIndexes = ExecInsertIndexTuples(slot, estate, 0, ((void*)0),
                NIL);
  }
 }

 if (canSetTag)
 {
  (estate->es_processed)++;
  setLastTid(&slot->tts_tid);
 }







 ar_insert_trig_tcs = mtstate->mt_transition_capture;
 if (mtstate->operation == CMD_UPDATE && mtstate->mt_transition_capture
  && mtstate->mt_transition_capture->tcs_update_new_table)
 {
  ExecARUpdateTriggers(estate, resultRelInfo, ((void*)0),
        ((void*)0),
        slot,
        ((void*)0),
        mtstate->mt_transition_capture);





  ar_insert_trig_tcs = ((void*)0);
 }


 ExecARInsertTriggers(estate, resultRelInfo, slot, recheckIndexes,
       ar_insert_trig_tcs);

 list_free(recheckIndexes);
 if (resultRelInfo->ri_WithCheckOptions != NIL)
  ExecWithCheckOptions(WCO_VIEW_CHECK, resultRelInfo, slot, estate);


 if (resultRelInfo->ri_projectReturning)
  result = ExecProcessReturning(resultRelInfo, slot, planSlot);

 return result;
}
