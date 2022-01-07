
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int uint16 ;
typedef int XLTW_Oper ;
struct TYPE_31__ {int tts_tid; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_36__ {TYPE_1__* ecxt_scantuple; } ;
struct TYPE_35__ {scalar_t__ ii_ExclusionOps; int * ii_UniqueStrats; int * ii_UniqueProcs; int * ii_ExclusionStrats; int * ii_ExclusionProcs; } ;
struct TYPE_34__ {scalar_t__ xs_recheck; } ;
struct TYPE_33__ {int * rd_indcollation; } ;
struct TYPE_32__ {scalar_t__ speculativeToken; int xmin; int xmax; } ;
typedef TYPE_2__ SnapshotData ;
typedef int ScanKeyData ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef int * ItemPointer ;
typedef TYPE_4__* IndexScanDesc ;
typedef TYPE_5__ IndexInfo ;
typedef TYPE_6__ ExprContext ;
typedef int EState ;
typedef int Datum ;
typedef scalar_t__ CEOUC_WAIT_MODE ;


 char* BuildIndexValueDescription (TYPE_3__*,int *,int*) ;
 scalar_t__ CEOUC_LIVELOCK_PREVENTING_WAIT ;
 scalar_t__ CEOUC_WAIT ;
 int ERRCODE_EXCLUSION_VIOLATION ;
 int ERROR ;
 int ExecDropSingleTupleTableSlot (TYPE_1__*) ;
 int FormIndexDatum (TYPE_5__*,TYPE_1__*,int *,int *,int*) ;
 int ForwardScanDirection ;
 int GetCurrentTransactionId () ;
 TYPE_6__* GetPerTupleExprContext (int *) ;
 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_3__*) ;
 int InitDirtySnapshot (TYPE_2__) ;
 int InvalidOid ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 scalar_t__ ItemPointerIsValid (int *) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int ScanKeyEntryInitialize (int *,int ,int,int ,int ,int ,int ,int ) ;
 int SpeculativeInsertionWait (int ,scalar_t__) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int XLTW_InsertIndex ;
 int XLTW_RecheckExclusionConstr ;
 int XactLockTableWait (int ,TYPE_3__*,int *,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,int ) ;
 int errtableconstraint (TYPE_3__*,int ) ;
 TYPE_4__* index_beginscan (TYPE_3__*,TYPE_3__*,TYPE_2__*,int,int ) ;
 int index_endscan (TYPE_4__*) ;
 scalar_t__ index_getnext_slot (TYPE_4__*,int ,TYPE_1__*) ;
 int index_recheck_constraint (TYPE_3__*,int *,int *,int*,int *) ;
 int index_rescan (TYPE_4__*,int *,int,int *,int ) ;
 TYPE_1__* table_slot_create (TYPE_3__*,int *) ;

__attribute__((used)) static bool
check_exclusion_or_unique_constraint(Relation heap, Relation index,
          IndexInfo *indexInfo,
          ItemPointer tupleid,
          Datum *values, bool *isnull,
          EState *estate, bool newIndex,
          CEOUC_WAIT_MODE waitMode,
          bool violationOK,
          ItemPointer conflictTid)
{
 Oid *constr_procs;
 uint16 *constr_strats;
 Oid *index_collations = index->rd_indcollation;
 int indnkeyatts = IndexRelationGetNumberOfKeyAttributes(index);
 IndexScanDesc index_scan;
 ScanKeyData scankeys[INDEX_MAX_KEYS];
 SnapshotData DirtySnapshot;
 int i;
 bool conflict;
 bool found_self;
 ExprContext *econtext;
 TupleTableSlot *existing_slot;
 TupleTableSlot *save_scantuple;

 if (indexInfo->ii_ExclusionOps)
 {
  constr_procs = indexInfo->ii_ExclusionProcs;
  constr_strats = indexInfo->ii_ExclusionStrats;
 }
 else
 {
  constr_procs = indexInfo->ii_UniqueProcs;
  constr_strats = indexInfo->ii_UniqueStrats;
 }





 for (i = 0; i < indnkeyatts; i++)
 {
  if (isnull[i])
   return 1;
 }





 InitDirtySnapshot(DirtySnapshot);

 for (i = 0; i < indnkeyatts; i++)
 {
  ScanKeyEntryInitialize(&scankeys[i],
          0,
          i + 1,
          constr_strats[i],
          InvalidOid,
          index_collations[i],
          constr_procs[i],
          values[i]);
 }
 existing_slot = table_slot_create(heap, ((void*)0));

 econtext = GetPerTupleExprContext(estate);
 save_scantuple = econtext->ecxt_scantuple;
 econtext->ecxt_scantuple = existing_slot;





retry:
 conflict = 0;
 found_self = 0;
 index_scan = index_beginscan(heap, index, &DirtySnapshot, indnkeyatts, 0);
 index_rescan(index_scan, scankeys, indnkeyatts, ((void*)0), 0);

 while (index_getnext_slot(index_scan, ForwardScanDirection, existing_slot))
 {
  TransactionId xwait;
  XLTW_Oper reason_wait;
  Datum existing_values[INDEX_MAX_KEYS];
  bool existing_isnull[INDEX_MAX_KEYS];
  char *error_new;
  char *error_existing;




  if (ItemPointerIsValid(tupleid) &&
   ItemPointerEquals(tupleid, &existing_slot->tts_tid))
  {
   if (found_self)
    elog(ERROR, "found self tuple multiple times in index \"%s\"",
      RelationGetRelationName(index));
   found_self = 1;
   continue;
  }





  FormIndexDatum(indexInfo, existing_slot, estate,
        existing_values, existing_isnull);


  if (index_scan->xs_recheck)
  {
   if (!index_recheck_constraint(index,
            constr_procs,
            existing_values,
            existing_isnull,
            values))
    continue;

  }
  xwait = TransactionIdIsValid(DirtySnapshot.xmin) ?
   DirtySnapshot.xmin : DirtySnapshot.xmax;

  if (TransactionIdIsValid(xwait) &&
   (waitMode == CEOUC_WAIT ||
    (waitMode == CEOUC_LIVELOCK_PREVENTING_WAIT &&
     DirtySnapshot.speculativeToken &&
     TransactionIdPrecedes(GetCurrentTransactionId(), xwait))))
  {
   reason_wait = indexInfo->ii_ExclusionOps ?
    XLTW_RecheckExclusionConstr : XLTW_InsertIndex;
   index_endscan(index_scan);
   if (DirtySnapshot.speculativeToken)
    SpeculativeInsertionWait(DirtySnapshot.xmin,
           DirtySnapshot.speculativeToken);
   else
    XactLockTableWait(xwait, heap,
          &existing_slot->tts_tid, reason_wait);
   goto retry;
  }





  if (violationOK)
  {
   conflict = 1;
   if (conflictTid)
    *conflictTid = existing_slot->tts_tid;
   break;
  }

  error_new = BuildIndexValueDescription(index, values, isnull);
  error_existing = BuildIndexValueDescription(index, existing_values,
             existing_isnull);
  if (newIndex)
   ereport(ERROR,
     (errcode(ERRCODE_EXCLUSION_VIOLATION),
      errmsg("could not create exclusion constraint \"%s\"",
       RelationGetRelationName(index)),
      error_new && error_existing ?
      errdetail("Key %s conflicts with key %s.",
          error_new, error_existing) :
      errdetail("Key conflicts exist."),
      errtableconstraint(heap,
          RelationGetRelationName(index))));
  else
   ereport(ERROR,
     (errcode(ERRCODE_EXCLUSION_VIOLATION),
      errmsg("conflicting key value violates exclusion constraint \"%s\"",
       RelationGetRelationName(index)),
      error_new && error_existing ?
      errdetail("Key %s conflicts with existing key %s.",
          error_new, error_existing) :
      errdetail("Key conflicts with existing key."),
      errtableconstraint(heap,
          RelationGetRelationName(index))));
 }

 index_endscan(index_scan);
 econtext->ecxt_scantuple = save_scantuple;

 ExecDropSingleTupleTableSlot(existing_slot);

 return !conflict;
}
