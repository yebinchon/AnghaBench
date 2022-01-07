
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_24__ {int state; TYPE_5__* ps_ExprContext; } ;
struct TYPE_23__ {int es_output_cid; int es_snapshot; } ;
struct TYPE_22__ {int * ecxt_outertuple; int * ecxt_innertuple; int * ecxt_scantuple; } ;
struct TYPE_21__ {TYPE_8__ ps; int mt_epqstate; } ;
struct TYPE_20__ {scalar_t__ ri_WithCheckOptions; TYPE_1__* ri_onConflict; int ri_RelationDesc; } ;
struct TYPE_19__ {int ctid; } ;
struct TYPE_18__ {int oc_ProjSlot; int oc_ProjInfo; int * oc_Existing; int * oc_WhereClause; } ;
typedef int TM_Result ;
typedef TYPE_2__ TM_FailureData ;
typedef TYPE_3__ ResultRelInfo ;
typedef int Relation ;
typedef TYPE_4__ ModifyTableState ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef TYPE_6__ EState ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetTransactionId (int ) ;
 int ERRCODE_CARDINALITY_VIOLATION ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int ExecCheckTupleVisible (TYPE_6__*,int ,int *) ;
 int ExecClearTuple (int *) ;
 int ExecProject (int ) ;
 int ExecQual (int *,TYPE_5__*) ;
 int * ExecUpdate (TYPE_4__*,int ,int *,int ,int *,int *,int ,int) ;
 int ExecUpdateLockMode (TYPE_6__*,TYPE_3__*) ;
 int ExecWithCheckOptions (int ,TYPE_3__*,int *,int ) ;
 int InstrCountFiltered1 (TYPE_8__*,int) ;
 int IsolationUsesXactSnapshot () ;
 int ItemPointerIndicatesMovedPartitions (int *) ;
 int LockWaitBlock ;
 int MinTransactionIdAttributeNumber ;
 scalar_t__ NIL ;





 int TransactionIdIsCurrentTransactionId (int ) ;
 int WCO_RLS_CONFLICT_CHECK ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int slot_getsysattr (int *,int ,int*) ;
 int table_tuple_lock (int ,int ,int ,int *,int ,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static bool
ExecOnConflictUpdate(ModifyTableState *mtstate,
      ResultRelInfo *resultRelInfo,
      ItemPointer conflictTid,
      TupleTableSlot *planSlot,
      TupleTableSlot *excludedSlot,
      EState *estate,
      bool canSetTag,
      TupleTableSlot **returning)
{
 ExprContext *econtext = mtstate->ps.ps_ExprContext;
 Relation relation = resultRelInfo->ri_RelationDesc;
 ExprState *onConflictSetWhere = resultRelInfo->ri_onConflict->oc_WhereClause;
 TupleTableSlot *existing = resultRelInfo->ri_onConflict->oc_Existing;
 TM_FailureData tmfd;
 LockTupleMode lockmode;
 TM_Result test;
 Datum xminDatum;
 TransactionId xmin;
 bool isnull;


 lockmode = ExecUpdateLockMode(estate, resultRelInfo);







 test = table_tuple_lock(relation, conflictTid,
       estate->es_snapshot,
       existing, estate->es_output_cid,
       lockmode, LockWaitBlock, 0,
       &tmfd);
 switch (test)
 {
  case 130:

   break;

  case 131:
   xminDatum = slot_getsysattr(existing,
          MinTransactionIdAttributeNumber,
          &isnull);
   Assert(!isnull);
   xmin = DatumGetTransactionId(xminDatum);

   if (TransactionIdIsCurrentTransactionId(xmin))
    ereport(ERROR,
      (errcode(ERRCODE_CARDINALITY_VIOLATION),
       errmsg("ON CONFLICT DO UPDATE command cannot affect row a second time"),
       errhint("Ensure that no rows proposed for insertion within the same command have duplicate constrained values.")));


   elog(ERROR, "attempted to lock invisible tuple");
   break;

  case 129:






   elog(ERROR, "unexpected self-updated tuple");
   break;

  case 128:
   if (IsolationUsesXactSnapshot())
    ereport(ERROR,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("could not serialize access due to concurrent update")));







   Assert(!ItemPointerIndicatesMovedPartitions(&tmfd.ctid));
   ExecClearTuple(existing);
   return 0;

  case 132:
   if (IsolationUsesXactSnapshot())
    ereport(ERROR,
      (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
       errmsg("could not serialize access due to concurrent delete")));


   Assert(!ItemPointerIndicatesMovedPartitions(&tmfd.ctid));
   ExecClearTuple(existing);
   return 0;

  default:
   elog(ERROR, "unrecognized table_tuple_lock status: %u", test);
 }
 ExecCheckTupleVisible(estate, relation, existing);
 econtext->ecxt_scantuple = existing;
 econtext->ecxt_innertuple = excludedSlot;
 econtext->ecxt_outertuple = ((void*)0);

 if (!ExecQual(onConflictSetWhere, econtext))
 {
  ExecClearTuple(existing);
  InstrCountFiltered1(&mtstate->ps, 1);
  return 1;
 }

 if (resultRelInfo->ri_WithCheckOptions != NIL)
 {
  ExecWithCheckOptions(WCO_RLS_CONFLICT_CHECK, resultRelInfo,
        existing,
        mtstate->ps.state);
 }


 ExecProject(resultRelInfo->ri_onConflict->oc_ProjInfo);
 *returning = ExecUpdate(mtstate, conflictTid, ((void*)0),
       resultRelInfo->ri_onConflict->oc_ProjSlot,
       planSlot,
       &mtstate->mt_epqstate, mtstate->ps.state,
       canSetTag);






 ExecClearTuple(existing);
 return 1;
}
