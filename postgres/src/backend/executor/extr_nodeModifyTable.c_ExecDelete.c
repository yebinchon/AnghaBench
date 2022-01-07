
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_8__ ;
typedef struct TYPE_56__ TYPE_7__ ;
typedef struct TYPE_55__ TYPE_6__ ;
typedef struct TYPE_54__ TYPE_5__ ;
typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;


struct TYPE_52__ {int tts_tableOid; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_53__ {scalar_t__ tcs_update_old_table; } ;
typedef TYPE_4__ TransitionCaptureState ;
struct TYPE_57__ {int es_processed; int es_output_cid; int es_snapshot; int es_crosscheck_snapshot; TYPE_6__* es_result_relation_info; } ;
struct TYPE_56__ {scalar_t__ operation; TYPE_4__* mt_transition_capture; } ;
struct TYPE_55__ {TYPE_2__* ri_FdwRoutine; scalar_t__ ri_projectReturning; int ri_RangeTableIndex; TYPE_1__* ri_TrigDesc; int ri_RelationDesc; } ;
struct TYPE_54__ {int traversed; int cmax; } ;
struct TYPE_51__ {TYPE_3__* (* ExecForeignDelete ) (TYPE_8__*,TYPE_6__*,TYPE_3__*,TYPE_3__*) ;} ;
struct TYPE_50__ {scalar_t__ trig_delete_instead_row; scalar_t__ trig_delete_before_row; } ;
typedef int TM_Result ;
typedef TYPE_5__ TM_FailureData ;
typedef TYPE_6__ ResultRelInfo ;
typedef int Relation ;
typedef TYPE_7__ ModifyTableState ;
typedef int ItemPointer ;
typedef int * HeapTuple ;
typedef TYPE_8__ EState ;
typedef int EPQState ;


 int Assert (int) ;
 scalar_t__ CMD_UPDATE ;
 int ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 TYPE_3__* EvalPlanQual (int *,int ,int ,TYPE_3__*) ;
 int EvalPlanQualBegin (int *) ;
 TYPE_3__* EvalPlanQualSlot (int *,int ,int ) ;
 int ExecARDeleteTriggers (TYPE_8__*,TYPE_6__*,int ,int *,TYPE_4__*) ;
 int ExecARUpdateTriggers (TYPE_8__*,TYPE_6__*,int ,int *,int *,int *,TYPE_4__*) ;
 int ExecBRDeleteTriggers (TYPE_8__*,int *,TYPE_6__*,int ,int *,TYPE_3__**) ;
 int ExecClearTuple (TYPE_3__*) ;
 int ExecForceStoreHeapTuple (int *,TYPE_3__*,int) ;
 TYPE_3__* ExecGetReturningSlot (TYPE_8__*,TYPE_6__*) ;
 int ExecIRDeleteTriggers (TYPE_8__*,TYPE_6__*,int *) ;
 int ExecMaterializeSlot (TYPE_3__*) ;
 TYPE_3__* ExecProcessReturning (TYPE_6__*,TYPE_3__*,TYPE_3__*) ;
 int ExecStoreAllNullTuple (TYPE_3__*) ;
 int IsolationUsesXactSnapshot () ;
 int LockTupleExclusive ;
 int LockWaitBlock ;
 int RelationGetRelid (int ) ;
 int SnapshotAny ;




 scalar_t__ TTS_EMPTY (TYPE_3__*) ;
 int TUPLE_LOCK_FLAG_FIND_LAST_VERSION ;
 int TupIsNull (TYPE_3__*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 TYPE_3__* stub1 (TYPE_8__*,TYPE_6__*,TYPE_3__*,TYPE_3__*) ;
 int table_tuple_delete (int ,int ,int ,int ,int ,int,TYPE_5__*,int) ;
 int table_tuple_fetch_row_version (int ,int ,int ,TYPE_3__*) ;
 int table_tuple_lock (int ,int ,int ,TYPE_3__*,int ,int ,int ,int ,TYPE_5__*) ;

__attribute__((used)) static TupleTableSlot *
ExecDelete(ModifyTableState *mtstate,
     ItemPointer tupleid,
     HeapTuple oldtuple,
     TupleTableSlot *planSlot,
     EPQState *epqstate,
     EState *estate,
     bool processReturning,
     bool canSetTag,
     bool changingPart,
     bool *tupleDeleted,
     TupleTableSlot **epqreturnslot)
{
 ResultRelInfo *resultRelInfo;
 Relation resultRelationDesc;
 TM_Result result;
 TM_FailureData tmfd;
 TupleTableSlot *slot = ((void*)0);
 TransitionCaptureState *ar_delete_trig_tcs;

 if (tupleDeleted)
  *tupleDeleted = 0;




 resultRelInfo = estate->es_result_relation_info;
 resultRelationDesc = resultRelInfo->ri_RelationDesc;


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_delete_before_row)
 {
  bool dodelete;

  dodelete = ExecBRDeleteTriggers(estate, epqstate, resultRelInfo,
          tupleid, oldtuple, epqreturnslot);

  if (!dodelete)
   return ((void*)0);
 }


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_delete_instead_row)
 {
  bool dodelete;

  Assert(oldtuple != ((void*)0));
  dodelete = ExecIRDeleteTriggers(estate, resultRelInfo, oldtuple);

  if (!dodelete)
   return ((void*)0);
 }
 else if (resultRelInfo->ri_FdwRoutine)
 {






  slot = ExecGetReturningSlot(estate, resultRelInfo);
  slot = resultRelInfo->ri_FdwRoutine->ExecForeignDelete(estate,
                  resultRelInfo,
                  slot,
                  planSlot);

  if (slot == ((void*)0))
   return ((void*)0);





  if (TTS_EMPTY(slot))
   ExecStoreAllNullTuple(slot);

  slot->tts_tableOid = RelationGetRelid(resultRelationDesc);
 }
 else
 {
ldelete:;
  result = table_tuple_delete(resultRelationDesc, tupleid,
         estate->es_output_cid,
         estate->es_snapshot,
         estate->es_crosscheck_snapshot,
         1 ,
         &tmfd,
         changingPart);

  switch (result)
  {
   case 129:
    if (tmfd.cmax != estate->es_output_cid)
     ereport(ERROR,
       (errcode(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
        errmsg("tuple to be deleted was already modified by an operation triggered by the current command"),
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





     EvalPlanQualBegin(epqstate);
     inputslot = EvalPlanQualSlot(epqstate, resultRelationDesc,
             resultRelInfo->ri_RangeTableIndex);

     result = table_tuple_lock(resultRelationDesc, tupleid,
             estate->es_snapshot,
             inputslot, estate->es_output_cid,
             LockTupleExclusive, LockWaitBlock,
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





       if (epqreturnslot)
       {
        *epqreturnslot = epqslot;
        return ((void*)0);
       }
       else
        goto ldelete;

      case 129:
       if (tmfd.cmax != estate->es_output_cid)
        ereport(ERROR,
          (errcode(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
           errmsg("tuple to be deleted was already modified by an operation triggered by the current command"),
           errhint("Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.")));
       return ((void*)0);

      case 131:

       return ((void*)0);

      default:
       elog(ERROR, "unexpected table_tuple_lock status: %u",
         result);
       return ((void*)0);
     }

     Assert(0);
     break;
    }

   case 131:
    if (IsolationUsesXactSnapshot())
     ereport(ERROR,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("could not serialize access due to concurrent delete")));

    return ((void*)0);

   default:
    elog(ERROR, "unrecognized table_tuple_delete status: %u",
      result);
    return ((void*)0);
  }
 }

 if (canSetTag)
  (estate->es_processed)++;


 if (tupleDeleted)
  *tupleDeleted = 1;







 ar_delete_trig_tcs = mtstate->mt_transition_capture;
 if (mtstate->operation == CMD_UPDATE && mtstate->mt_transition_capture
  && mtstate->mt_transition_capture->tcs_update_old_table)
 {
  ExecARUpdateTriggers(estate, resultRelInfo,
        tupleid,
        oldtuple,
        ((void*)0),
        ((void*)0),
        mtstate->mt_transition_capture);





  ar_delete_trig_tcs = ((void*)0);
 }


 ExecARDeleteTriggers(estate, resultRelInfo, tupleid, oldtuple,
       ar_delete_trig_tcs);


 if (processReturning && resultRelInfo->ri_projectReturning)
 {




  TupleTableSlot *rslot;

  if (resultRelInfo->ri_FdwRoutine)
  {

   Assert(!TupIsNull(slot));
  }
  else
  {
   slot = ExecGetReturningSlot(estate, resultRelInfo);
   if (oldtuple != ((void*)0))
   {
    ExecForceStoreHeapTuple(oldtuple, slot, 0);
   }
   else
   {
    if (!table_tuple_fetch_row_version(resultRelationDesc, tupleid,
               SnapshotAny, slot))
     elog(ERROR, "failed to fetch deleted tuple for DELETE RETURNING");
   }
  }

  rslot = ExecProcessReturning(resultRelInfo, slot, planSlot);





  ExecMaterializeSlot(rslot);

  ExecClearTuple(slot);

  return rslot;
 }

 return ((void*)0);
}
