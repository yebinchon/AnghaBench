
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_100__ TYPE_9__ ;
typedef struct TYPE_99__ TYPE_8__ ;
typedef struct TYPE_98__ TYPE_81__ ;
typedef struct TYPE_97__ TYPE_7__ ;
typedef struct TYPE_96__ TYPE_6__ ;
typedef struct TYPE_95__ TYPE_5__ ;
typedef struct TYPE_94__ TYPE_4__ ;
typedef struct TYPE_93__ TYPE_3__ ;
typedef struct TYPE_92__ TYPE_2__ ;
typedef struct TYPE_91__ TYPE_1__ ;
typedef struct TYPE_90__ TYPE_13__ ;
typedef struct TYPE_89__ TYPE_12__ ;
typedef struct TYPE_88__ TYPE_11__ ;
typedef struct TYPE_87__ TYPE_10__ ;


struct TYPE_96__ {void* tts_tableOid; } ;
typedef TYPE_6__ TupleTableSlot ;
struct TYPE_97__ {int attrMap; } ;
typedef TYPE_7__ TupleConversionMap ;
struct TYPE_100__ {scalar_t__ ri_NumIndices; scalar_t__ ri_projectReturning; int * ri_WithCheckOptions; int ri_junkFilter; int ri_RangeTableIndex; scalar_t__ ri_PartitionCheck; TYPE_2__* ri_FdwRoutine; TYPE_1__* ri_TrigDesc; TYPE_10__* ri_RelationDesc; } ;
struct TYPE_99__ {int traversed; int cmax; } ;
struct TYPE_98__ {TYPE_7__* tcs_map; int * tcs_original_insert_tuple; } ;
struct TYPE_95__ {TYPE_4__* constr; } ;
struct TYPE_94__ {scalar_t__ has_generated_stored; } ;
struct TYPE_93__ {scalar_t__ plan; } ;
struct TYPE_92__ {TYPE_6__* (* ExecForeignUpdate ) (TYPE_13__*,TYPE_9__*,TYPE_6__*,TYPE_6__*) ;} ;
struct TYPE_91__ {scalar_t__ trig_update_instead_row; scalar_t__ trig_update_before_row; } ;
struct TYPE_90__ {int es_processed; int es_output_cid; int es_snapshot; int es_crosscheck_snapshot; TYPE_9__* es_result_relation_info; } ;
struct TYPE_89__ {scalar_t__ onConflictAction; } ;
struct TYPE_88__ {int mt_nplans; scalar_t__ operation; TYPE_81__* mt_transition_capture; TYPE_81__* mt_oc_transition_capture; int * rootResultRelInfo; int mt_root_tuple_slot; TYPE_9__* resultRelInfo; TYPE_3__ ps; int * mt_partition_tuple_routing; } ;
struct TYPE_87__ {TYPE_5__* rd_att; } ;
typedef int TM_Result ;
typedef TYPE_8__ TM_FailureData ;
typedef TYPE_9__ ResultRelInfo ;
typedef TYPE_10__* Relation ;
typedef int PartitionTupleRouting ;
typedef TYPE_11__ ModifyTableState ;
typedef TYPE_12__ ModifyTable ;
typedef int LockTupleMode ;
typedef int List ;
typedef int ItemPointer ;
typedef int HeapTuple ;
typedef TYPE_13__ EState ;
typedef int EPQState ;


 int Assert (int) ;
 scalar_t__ CMD_INSERT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 TYPE_6__* EvalPlanQual (int *,TYPE_10__*,int ,TYPE_6__*) ;
 TYPE_6__* EvalPlanQualSlot (int *,TYPE_10__*,int ) ;
 int ExecARUpdateTriggers (TYPE_13__*,TYPE_9__*,int ,int ,TYPE_6__*,int *,TYPE_81__*) ;
 int ExecBRUpdateTriggers (TYPE_13__*,int *,TYPE_9__*,int ,int ,TYPE_6__*) ;
 int ExecComputeStoredGenerated (TYPE_13__*,TYPE_6__*) ;
 int ExecConstraints (TYPE_9__*,TYPE_6__*,TYPE_13__*) ;
 int ExecDelete (TYPE_11__*,int ,int ,TYPE_6__*,int *,TYPE_13__*,int,int,int,int*,TYPE_6__**) ;
 TYPE_6__* ExecFilterJunk (int ,TYPE_6__*) ;
 int ExecIRUpdateTriggers (TYPE_13__*,TYPE_9__*,int ,TYPE_6__*) ;
 TYPE_6__* ExecInsert (TYPE_11__*,TYPE_6__*,TYPE_6__*,TYPE_13__*,int) ;
 int * ExecInsertIndexTuples (TYPE_6__*,TYPE_13__*,int,int *,int *) ;
 int ExecMaterializeSlot (TYPE_6__*) ;
 int ExecPartitionCheck (TYPE_9__*,TYPE_6__*,TYPE_13__*,int) ;
 int ExecPartitionCheckEmitError (TYPE_9__*,TYPE_6__*,TYPE_13__*) ;
 TYPE_6__* ExecPrepareTupleRouting (TYPE_11__*,TYPE_13__*,int *,int *,TYPE_6__*) ;
 TYPE_6__* ExecProcessReturning (TYPE_9__*,TYPE_6__*,TYPE_6__*) ;
 int ExecWithCheckOptions (int ,TYPE_9__*,TYPE_6__*,TYPE_13__*) ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int IsolationUsesXactSnapshot () ;
 int LockWaitBlock ;
 int * NIL ;
 scalar_t__ ONCONFLICT_UPDATE ;
 void* RelationGetRelid (TYPE_10__*) ;




 int TUPLE_LOCK_FLAG_FIND_LAST_VERSION ;
 scalar_t__ TupIsNull (TYPE_6__*) ;
 int WCO_RLS_UPDATE_CHECK ;
 int WCO_VIEW_CHECK ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 TYPE_6__* execute_attr_map_slot (int ,TYPE_6__*,int ) ;
 int list_free (int *) ;
 TYPE_6__* stub1 (TYPE_13__*,TYPE_9__*,TYPE_6__*,TYPE_6__*) ;
 int table_tuple_lock (TYPE_10__*,int ,int ,TYPE_6__*,int ,int ,int ,int ,TYPE_8__*) ;
 int table_tuple_update (TYPE_10__*,int ,TYPE_6__*,int ,int ,int ,int,TYPE_8__*,int *,int*) ;
 TYPE_7__* tupconv_map_for_subplan (TYPE_11__*,int) ;

__attribute__((used)) static TupleTableSlot *
ExecUpdate(ModifyTableState *mtstate,
     ItemPointer tupleid,
     HeapTuple oldtuple,
     TupleTableSlot *slot,
     TupleTableSlot *planSlot,
     EPQState *epqstate,
     EState *estate,
     bool canSetTag)
{
 ResultRelInfo *resultRelInfo;
 Relation resultRelationDesc;
 TM_Result result;
 TM_FailureData tmfd;
 List *recheckIndexes = NIL;
 TupleConversionMap *saved_tcs_map = ((void*)0);




 if (IsBootstrapProcessingMode())
  elog(ERROR, "cannot UPDATE during bootstrap");

 ExecMaterializeSlot(slot);




 resultRelInfo = estate->es_result_relation_info;
 resultRelationDesc = resultRelInfo->ri_RelationDesc;


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_update_before_row)
 {
  if (!ExecBRUpdateTriggers(estate, epqstate, resultRelInfo,
          tupleid, oldtuple, slot))
   return ((void*)0);
 }


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_update_instead_row)
 {
  if (!ExecIRUpdateTriggers(estate, resultRelInfo,
          oldtuple, slot))
   return ((void*)0);
 }
 else if (resultRelInfo->ri_FdwRoutine)
 {



  if (resultRelationDesc->rd_att->constr &&
   resultRelationDesc->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);




  slot = resultRelInfo->ri_FdwRoutine->ExecForeignUpdate(estate,
                  resultRelInfo,
                  slot,
                  planSlot);

  if (slot == ((void*)0))
   return ((void*)0);






  slot->tts_tableOid = RelationGetRelid(resultRelationDesc);
 }
 else
 {
  LockTupleMode lockmode;
  bool partition_constraint_failed;
  bool update_indexes;





  slot->tts_tableOid = RelationGetRelid(resultRelationDesc);




  if (resultRelationDesc->rd_att->constr &&
   resultRelationDesc->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);
lreplace:;


  ExecMaterializeSlot(slot);
  partition_constraint_failed =
   resultRelInfo->ri_PartitionCheck &&
   !ExecPartitionCheck(resultRelInfo, slot, estate, 0);

  if (!partition_constraint_failed &&
   resultRelInfo->ri_WithCheckOptions != NIL)
  {




   ExecWithCheckOptions(WCO_RLS_UPDATE_CHECK,
         resultRelInfo, slot, estate);
  }





  if (partition_constraint_failed)
  {
   bool tuple_deleted;
   TupleTableSlot *ret_slot;
   TupleTableSlot *epqslot = ((void*)0);
   PartitionTupleRouting *proute = mtstate->mt_partition_tuple_routing;
   int map_index;
   TupleConversionMap *tupconv_map;







   if (((ModifyTable *) mtstate->ps.plan)->onConflictAction == ONCONFLICT_UPDATE)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("invalid ON UPDATE specification"),
       errdetail("The result tuple would appear in a different partition than the original tuple.")));






   if (proute == ((void*)0))
    ExecPartitionCheckEmitError(resultRelInfo, slot, estate);





   ExecDelete(mtstate, tupleid, oldtuple, planSlot, epqstate,
        estate, 0, 0 ,
        1 , &tuple_deleted, &epqslot);
   if (!tuple_deleted)
   {







    if (TupIsNull(epqslot))
     return ((void*)0);
    else
    {
     slot = ExecFilterJunk(resultRelInfo->ri_junkFilter, epqslot);
     goto lreplace;
    }
   }
   if (mtstate->mt_transition_capture)
    saved_tcs_map = mtstate->mt_transition_capture->tcs_map;
   map_index = resultRelInfo - mtstate->resultRelInfo;
   Assert(map_index >= 0 && map_index < mtstate->mt_nplans);
   tupconv_map = tupconv_map_for_subplan(mtstate, map_index);
   if (tupconv_map != ((void*)0))
    slot = execute_attr_map_slot(tupconv_map->attrMap,
            slot,
            mtstate->mt_root_tuple_slot);





   Assert(mtstate->rootResultRelInfo != ((void*)0));
   slot = ExecPrepareTupleRouting(mtstate, estate, proute,
             mtstate->rootResultRelInfo, slot);

   ret_slot = ExecInsert(mtstate, slot, planSlot,
          estate, canSetTag);


   estate->es_result_relation_info = resultRelInfo;
   if (mtstate->mt_transition_capture)
   {
    mtstate->mt_transition_capture->tcs_original_insert_tuple = ((void*)0);
    mtstate->mt_transition_capture->tcs_map = saved_tcs_map;
   }

   return ret_slot;
  }







  if (resultRelationDesc->rd_att->constr)
   ExecConstraints(resultRelInfo, slot, estate);
  result = table_tuple_update(resultRelationDesc, tupleid, slot,
         estate->es_output_cid,
         estate->es_snapshot,
         estate->es_crosscheck_snapshot,
         1 ,
         &tmfd, &lockmode, &update_indexes);

  switch (result)
  {
   case 129:
    if (tmfd.cmax != estate->es_output_cid)
     ereport(ERROR,
       (errcode(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
        errmsg("tuple to be updated was already modified by an operation triggered by the current command"),
        errhint("Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.")));


    return ((void*)0);

   case 130:
    break;

   case 128:
    {
     TupleTableSlot *inputslot;
     TupleTableSlot *epqslot;

     if (IsolationUsesXactSnapshot())
      ereport(ERROR,
        (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
         errmsg("could not serialize access due to concurrent update")));





     inputslot = EvalPlanQualSlot(epqstate, resultRelationDesc,
             resultRelInfo->ri_RangeTableIndex);

     result = table_tuple_lock(resultRelationDesc, tupleid,
             estate->es_snapshot,
             inputslot, estate->es_output_cid,
             lockmode, LockWaitBlock,
             TUPLE_LOCK_FLAG_FIND_LAST_VERSION,
             &tmfd);

     switch (result)
     {
      case 130:
       Assert(tmfd.traversed);

       epqslot = EvalPlanQual(epqstate,
               resultRelationDesc,
               resultRelInfo->ri_RangeTableIndex,
               inputslot);
       if (TupIsNull(epqslot))

        return ((void*)0);

       slot = ExecFilterJunk(resultRelInfo->ri_junkFilter, epqslot);
       goto lreplace;

      case 131:

       return ((void*)0);

      case 129:
       if (tmfd.cmax != estate->es_output_cid)
        ereport(ERROR,
          (errcode(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
           errmsg("tuple to be updated was already modified by an operation triggered by the current command"),
           errhint("Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.")));
       return ((void*)0);

      default:

       elog(ERROR, "unexpected table_tuple_lock status: %u",
         result);
       return ((void*)0);
     }
    }

    break;

   case 131:
    if (IsolationUsesXactSnapshot())
     ereport(ERROR,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("could not serialize access due to concurrent delete")));

    return ((void*)0);

   default:
    elog(ERROR, "unrecognized table_tuple_update status: %u",
      result);
    return ((void*)0);
  }


  if (resultRelInfo->ri_NumIndices > 0 && update_indexes)
   recheckIndexes = ExecInsertIndexTuples(slot, estate, 0, ((void*)0), NIL);
 }

 if (canSetTag)
  (estate->es_processed)++;


 ExecARUpdateTriggers(estate, resultRelInfo, tupleid, oldtuple, slot,
       recheckIndexes,
       mtstate->operation == CMD_INSERT ?
       mtstate->mt_oc_transition_capture :
       mtstate->mt_transition_capture);

 list_free(recheckIndexes);
 if (resultRelInfo->ri_WithCheckOptions != NIL)
  ExecWithCheckOptions(WCO_VIEW_CHECK, resultRelInfo, slot, estate);


 if (resultRelInfo->ri_projectReturning)
  return ExecProcessReturning(resultRelInfo, slot, planSlot);

 return ((void*)0);
}
