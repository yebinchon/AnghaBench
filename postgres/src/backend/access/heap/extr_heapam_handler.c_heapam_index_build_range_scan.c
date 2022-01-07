
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_10__ ;


typedef int TupleTableSlot ;
typedef int TransactionId ;
typedef TYPE_3__* TableScanDesc ;
struct TYPE_37__ {int * rs_parallel; } ;
struct TYPE_43__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; TYPE_2__ rs_base; int rs_cbuf; } ;
struct TYPE_42__ {int t_self; int t_data; } ;
struct TYPE_41__ {int ii_BrokenHotChain; int * ii_PredicateState; int ii_ExpressionsState; int ii_Concurrent; int ii_Predicate; int * ii_ExclusionOps; scalar_t__ ii_Unique; } ;
struct TYPE_40__ {scalar_t__ phs_nblocks; } ;
struct TYPE_39__ {TYPE_1__* rd_rel; } ;
struct TYPE_38__ {scalar_t__ rs_snapshot; } ;
struct TYPE_36__ {int relam; } ;
struct TYPE_35__ {int ecxt_per_tuple_memory; int * ecxt_scantuple; } ;
typedef scalar_t__ Snapshot ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__* ParallelBlockTableScanDesc ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef TYPE_6__ IndexInfo ;
typedef int (* IndexBuildCallback ) (TYPE_4__*,int *,int *,int*,int,void*) ;
typedef TYPE_8__* HeapTuple ;
typedef TYPE_9__* HeapScanDesc ;
typedef int ExprState ;
typedef TYPE_10__ ExprContext ;
typedef int EState ;
typedef int Datum ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int * CreateExecutorState () ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int * ExecPrepareQual (int ,int *) ;
 int ExecQual (int *,TYPE_10__*) ;
 int ExecStoreBufferHeapTuple (TYPE_8__*,int *,int ) ;
 int FormIndexDatum (TYPE_6__*,int *,int *,int *,int*) ;
 int ForwardScanDirection ;
 int FreeExecutorState (int *) ;
 int GetOldestXmin (TYPE_4__*,int ) ;
 TYPE_10__* GetPerTupleExprContext (int *) ;
 int GetTransactionSnapshot () ;





 int HeapTupleHeaderGetUpdateXid (int ) ;
 int HeapTupleHeaderGetXmin (int ) ;
 scalar_t__ HeapTupleIsHeapOnly (TYPE_8__*) ;
 int HeapTupleIsHotUpdated (TYPE_8__*) ;
 int HeapTupleSatisfiesVacuum (TYPE_8__*,int ,int ) ;
 int INDEX_MAX_KEYS ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidTransactionId ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ IsMVCCSnapshot (scalar_t__) ;
 int IsSystemRelation (TYPE_4__*) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSet (int *,int ,int) ;
 int LockBuffer (int ,int ) ;
 int MaxHeapTuplesPerPage ;
 int MemoryContextReset (int ) ;
 int NIL ;
 int OffsetNumberIsValid (int) ;
 int OidIsValid (int ) ;
 int PROCARRAY_FLAGS_VACUUM ;
 int PROGRESS_SCAN_BLOCKS_DONE ;
 int PROGRESS_SCAN_BLOCKS_TOTAL ;
 scalar_t__ RegisterSnapshot (int ) ;
 int RelationGetRelationName (TYPE_4__*) ;
 scalar_t__ SnapshotAny ;
 int TransactionIdIsCurrentTransactionId (int ) ;
 int TransactionIdIsValid (int ) ;
 int UnregisterSnapshot (scalar_t__) ;
 int WARNING ;
 int XLTW_InsertIndexUnique ;
 int XactLockTableWait (int ,TYPE_4__*,int *,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,int ,int,int ) ;
 int heap_get_root_tuples (int ,int*) ;
 TYPE_8__* heap_getnext (TYPE_3__*,int ) ;
 int heap_setscanlimits (TYPE_3__*,scalar_t__,scalar_t__) ;
 scalar_t__ heapam_scan_get_blocks_done (TYPE_9__*) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 TYPE_3__* table_beginscan_strat (TYPE_4__*,scalar_t__,int ,int *,int,int) ;
 int table_endscan (TYPE_3__*) ;
 int * table_slot_create (TYPE_4__*,int *) ;

__attribute__((used)) static double
heapam_index_build_range_scan(Relation heapRelation,
         Relation indexRelation,
         IndexInfo *indexInfo,
         bool allow_sync,
         bool anyvisible,
         bool progress,
         BlockNumber start_blockno,
         BlockNumber numblocks,
         IndexBuildCallback callback,
         void *callback_state,
         TableScanDesc scan)
{
 HeapScanDesc hscan;
 bool is_system_catalog;
 bool checking_uniqueness;
 HeapTuple heapTuple;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 double reltuples;
 ExprState *predicate;
 TupleTableSlot *slot;
 EState *estate;
 ExprContext *econtext;
 Snapshot snapshot;
 bool need_unregister_snapshot = 0;
 TransactionId OldestXmin;
 BlockNumber previous_blkno = InvalidBlockNumber;
 BlockNumber root_blkno = InvalidBlockNumber;
 OffsetNumber root_offsets[MaxHeapTuplesPerPage];




 Assert(OidIsValid(indexRelation->rd_rel->relam));


 is_system_catalog = IsSystemRelation(heapRelation);


 checking_uniqueness = (indexInfo->ii_Unique ||
         indexInfo->ii_ExclusionOps != ((void*)0));





 Assert(!(anyvisible && checking_uniqueness));





 estate = CreateExecutorState();
 econtext = GetPerTupleExprContext(estate);
 slot = table_slot_create(heapRelation, ((void*)0));


 econtext->ecxt_scantuple = slot;


 predicate = ExecPrepareQual(indexInfo->ii_Predicate, estate);
 OldestXmin = InvalidTransactionId;


 if (!IsBootstrapProcessingMode() && !indexInfo->ii_Concurrent)
  OldestXmin = GetOldestXmin(heapRelation, PROCARRAY_FLAGS_VACUUM);

 if (!scan)
 {






  if (!TransactionIdIsValid(OldestXmin))
  {
   snapshot = RegisterSnapshot(GetTransactionSnapshot());
   need_unregister_snapshot = 1;
  }
  else
   snapshot = SnapshotAny;

  scan = table_beginscan_strat(heapRelation,
          snapshot,
          0,
          ((void*)0),
          1,
          allow_sync);
 }
 else
 {







  Assert(!IsBootstrapProcessingMode());
  Assert(allow_sync);
  snapshot = scan->rs_snapshot;
 }

 hscan = (HeapScanDesc) scan;


 if (progress)
 {
  BlockNumber nblocks;

  if (hscan->rs_base.rs_parallel != ((void*)0))
  {
   ParallelBlockTableScanDesc pbscan;

   pbscan = (ParallelBlockTableScanDesc) hscan->rs_base.rs_parallel;
   nblocks = pbscan->phs_nblocks;
  }
  else
   nblocks = hscan->rs_nblocks;

  pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_TOTAL,
          nblocks);
 }







 Assert(snapshot == SnapshotAny || IsMVCCSnapshot(snapshot));
 Assert(snapshot == SnapshotAny ? TransactionIdIsValid(OldestXmin) :
     !TransactionIdIsValid(OldestXmin));
 Assert(snapshot == SnapshotAny || !anyvisible);


 if (!allow_sync)
  heap_setscanlimits(scan, start_blockno, numblocks);
 else
 {

  Assert(start_blockno == 0);
  Assert(numblocks == InvalidBlockNumber);
 }

 reltuples = 0;




 while ((heapTuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  bool tupleIsAlive;

  CHECK_FOR_INTERRUPTS();


  if (progress)
  {
   BlockNumber blocks_done = heapam_scan_get_blocks_done(hscan);

   if (blocks_done != previous_blkno)
   {
    pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_DONE,
            blocks_done);
    previous_blkno = blocks_done;
   }
  }
  if (hscan->rs_cblock != root_blkno)
  {
   Page page = BufferGetPage(hscan->rs_cbuf);

   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);
   heap_get_root_tuples(page, root_offsets);
   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

   root_blkno = hscan->rs_cblock;
  }

  if (snapshot == SnapshotAny)
  {

   bool indexIt;
   TransactionId xwait;

 recheck:







   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);
   switch (HeapTupleSatisfiesVacuum(heapTuple, OldestXmin,
            hscan->rs_cbuf))
   {
    case 132:

     indexIt = 0;
     tupleIsAlive = 0;
     break;
    case 129:

     indexIt = 1;
     tupleIsAlive = 1;

     reltuples += 1;
     break;
    case 128:
     if (HeapTupleIsHotUpdated(heapTuple))
     {
      indexIt = 0;

      indexInfo->ii_BrokenHotChain = 1;
     }
     else
      indexIt = 1;

     tupleIsAlive = 0;
     break;
    case 130:





     if (anyvisible)
     {
      indexIt = 1;
      tupleIsAlive = 1;
      reltuples += 1;
      break;
     }
     xwait = HeapTupleHeaderGetXmin(heapTuple->t_data);
     if (!TransactionIdIsCurrentTransactionId(xwait))
     {
      if (!is_system_catalog)
       elog(WARNING, "concurrent insert in progress within table \"%s\"",
         RelationGetRelationName(heapRelation));







      if (checking_uniqueness)
      {



       LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);
       XactLockTableWait(xwait, heapRelation,
             &heapTuple->t_self,
             XLTW_InsertIndexUnique);
       CHECK_FOR_INTERRUPTS();
       goto recheck;
      }
     }
     else
     {






      reltuples += 1;
     }





     indexIt = 1;
     tupleIsAlive = 1;
     break;
    case 131:






     if (anyvisible)
     {
      indexIt = 1;
      tupleIsAlive = 0;
      reltuples += 1;
      break;
     }

     xwait = HeapTupleHeaderGetUpdateXid(heapTuple->t_data);
     if (!TransactionIdIsCurrentTransactionId(xwait))
     {
      if (!is_system_catalog)
       elog(WARNING, "concurrent delete in progress within table \"%s\"",
         RelationGetRelationName(heapRelation));
      if (checking_uniqueness ||
       HeapTupleIsHotUpdated(heapTuple))
      {



       LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);
       XactLockTableWait(xwait, heapRelation,
             &heapTuple->t_self,
             XLTW_InsertIndexUnique);
       CHECK_FOR_INTERRUPTS();
       goto recheck;
      }





      indexIt = 1;
      reltuples += 1;
     }
     else if (HeapTupleIsHotUpdated(heapTuple))
     {






      indexIt = 0;

      indexInfo->ii_BrokenHotChain = 1;
     }
     else
     {





      indexIt = 1;
     }

     tupleIsAlive = 0;
     break;
    default:
     elog(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
     indexIt = tupleIsAlive = 0;
     break;
   }

   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

   if (!indexIt)
    continue;
  }
  else
  {

   tupleIsAlive = 1;
   reltuples += 1;
  }

  MemoryContextReset(econtext->ecxt_per_tuple_memory);


  ExecStoreBufferHeapTuple(heapTuple, slot, hscan->rs_cbuf);





  if (predicate != ((void*)0))
  {
   if (!ExecQual(predicate, econtext))
    continue;
  }






  FormIndexDatum(indexInfo,
        slot,
        estate,
        values,
        isnull);







  if (HeapTupleIsHeapOnly(heapTuple))
  {




   ItemPointerData tid;
   OffsetNumber offnum;

   offnum = ItemPointerGetOffsetNumber(&heapTuple->t_self);

   if (!OffsetNumberIsValid(root_offsets[offnum - 1]))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("failed to find parent tuple for heap-only tuple at (%u,%u) in table \"%s\"",
           ItemPointerGetBlockNumber(&heapTuple->t_self),
           offnum,
           RelationGetRelationName(heapRelation))));

   ItemPointerSet(&tid, ItemPointerGetBlockNumber(&heapTuple->t_self),
         root_offsets[offnum - 1]);


   callback(indexRelation, &tid, values, isnull, tupleIsAlive,
      callback_state);
  }
  else
  {

   callback(indexRelation, &heapTuple->t_self, values, isnull,
      tupleIsAlive, callback_state);
  }
 }


 if (progress)
 {
  BlockNumber blks_done;

  if (hscan->rs_base.rs_parallel != ((void*)0))
  {
   ParallelBlockTableScanDesc pbscan;

   pbscan = (ParallelBlockTableScanDesc) hscan->rs_base.rs_parallel;
   blks_done = pbscan->phs_nblocks;
  }
  else
   blks_done = hscan->rs_nblocks;

  pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_DONE,
          blks_done);
 }

 table_endscan(scan);


 if (need_unregister_snapshot)
  UnregisterSnapshot(snapshot);

 ExecDropSingleTupleTableSlot(slot);

 FreeExecutorState(estate);


 indexInfo->ii_ExpressionsState = NIL;
 indexInfo->ii_PredicateState = ((void*)0);

 return reltuples;
}
