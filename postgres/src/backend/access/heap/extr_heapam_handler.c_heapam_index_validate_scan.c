
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int in_index ;
struct TYPE_25__ {int htups; int tups_inserted; int tuplesort; } ;
typedef TYPE_2__ ValidateIndexState ;
typedef int TupleTableSlot ;
typedef scalar_t__ TableScanDesc ;
struct TYPE_30__ {int ecxt_per_tuple_memory; int * ecxt_scantuple; } ;
struct TYPE_29__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; int rs_cbuf; } ;
struct TYPE_28__ {int t_self; } ;
struct TYPE_27__ {int * ii_PredicateState; int ii_ExpressionsState; scalar_t__ ii_Unique; int ii_Predicate; } ;
struct TYPE_26__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {int relam; } ;
typedef int Snapshot ;
typedef TYPE_3__* Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_4__ IndexInfo ;
typedef TYPE_5__* HeapTuple ;
typedef TYPE_6__* HeapScanDesc ;
typedef int ExprState ;
typedef TYPE_7__ ExprContext ;
typedef int EState ;
typedef int Datum ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int * CreateExecutorState () ;
 int DatumGetInt64 (int ) ;
 int DatumGetPointer (int ) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int * ExecPrepareQual (int ,int *) ;
 int ExecQual (int *,TYPE_7__*) ;
 int ExecStoreHeapTuple (TYPE_5__*,int *,int) ;
 int FormIndexDatum (TYPE_4__*,int *,int *,int *,int*) ;
 int ForwardScanDirection ;
 int FreeExecutorState (int *) ;
 TYPE_7__* GetPerTupleExprContext (int *) ;
 scalar_t__ HeapTupleIsHeapOnly (TYPE_5__*) ;
 int INDEX_MAX_KEYS ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ ItemPointerCompare (int *,int *) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSetOffsetNumber (int *,int) ;
 int LockBuffer (int ,int ) ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 int MaxHeapTuplesPerPage ;
 int MemoryContextReset (int ) ;
 int NIL ;
 int OffsetNumberIsValid (int) ;
 int OidIsValid (int ) ;
 int PROGRESS_SCAN_BLOCKS_DONE ;
 int PROGRESS_SCAN_BLOCKS_TOTAL ;
 int RelationGetDescr (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int TTSOpsHeapTuple ;
 int UNIQUE_CHECK_NO ;
 int UNIQUE_CHECK_YES ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,scalar_t__,int,int ) ;
 int heap_get_root_tuples (int ,int*) ;
 TYPE_5__* heap_getnext (scalar_t__,int ) ;
 int index_insert (TYPE_3__*,int *,int*,int *,TYPE_3__*,int ,TYPE_4__*) ;
 int itemptr_decode (int *,int ) ;
 int memset (int*,int ,int) ;
 int pfree (int ) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 scalar_t__ table_beginscan_strat (TYPE_3__*,int ,int ,int *,int,int) ;
 int table_endscan (scalar_t__) ;
 int tuplesort_getdatum (int ,int,int *,int*,int *) ;

__attribute__((used)) static void
heapam_index_validate_scan(Relation heapRelation,
         Relation indexRelation,
         IndexInfo *indexInfo,
         Snapshot snapshot,
         ValidateIndexState *state)
{
 TableScanDesc scan;
 HeapScanDesc hscan;
 HeapTuple heapTuple;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 ExprState *predicate;
 TupleTableSlot *slot;
 EState *estate;
 ExprContext *econtext;
 BlockNumber root_blkno = InvalidBlockNumber;
 OffsetNumber root_offsets[MaxHeapTuplesPerPage];
 bool in_index[MaxHeapTuplesPerPage];
 BlockNumber previous_blkno = InvalidBlockNumber;


 ItemPointer indexcursor = ((void*)0);
 ItemPointerData decoded;
 bool tuplesort_empty = 0;




 Assert(OidIsValid(indexRelation->rd_rel->relam));





 estate = CreateExecutorState();
 econtext = GetPerTupleExprContext(estate);
 slot = MakeSingleTupleTableSlot(RelationGetDescr(heapRelation),
         &TTSOpsHeapTuple);


 econtext->ecxt_scantuple = slot;


 predicate = ExecPrepareQual(indexInfo->ii_Predicate, estate);







 scan = table_beginscan_strat(heapRelation,
         snapshot,
         0,
         ((void*)0),
         1,
         0);
 hscan = (HeapScanDesc) scan;

 pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_TOTAL,
         hscan->rs_nblocks);




 while ((heapTuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  ItemPointer heapcursor = &heapTuple->t_self;
  ItemPointerData rootTuple;
  OffsetNumber root_offnum;

  CHECK_FOR_INTERRUPTS();

  state->htups += 1;

  if ((previous_blkno == InvalidBlockNumber) ||
   (hscan->rs_cblock != previous_blkno))
  {
   pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_DONE,
           hscan->rs_cblock);
   previous_blkno = hscan->rs_cblock;
  }
  if (hscan->rs_cblock != root_blkno)
  {
   Page page = BufferGetPage(hscan->rs_cbuf);

   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);
   heap_get_root_tuples(page, root_offsets);
   LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

   memset(in_index, 0, sizeof(in_index));

   root_blkno = hscan->rs_cblock;
  }


  rootTuple = *heapcursor;
  root_offnum = ItemPointerGetOffsetNumber(heapcursor);

  if (HeapTupleIsHeapOnly(heapTuple))
  {
   root_offnum = root_offsets[root_offnum - 1];
   if (!OffsetNumberIsValid(root_offnum))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("failed to find parent tuple for heap-only tuple at (%u,%u) in table \"%s\"",
           ItemPointerGetBlockNumber(heapcursor),
           ItemPointerGetOffsetNumber(heapcursor),
           RelationGetRelationName(heapRelation))));
   ItemPointerSetOffsetNumber(&rootTuple, root_offnum);
  }





  while (!tuplesort_empty &&
      (!indexcursor ||
    ItemPointerCompare(indexcursor, &rootTuple) < 0))
  {
   Datum ts_val;
   bool ts_isnull;

   if (indexcursor)
   {



    if (ItemPointerGetBlockNumber(indexcursor) == root_blkno)
     in_index[ItemPointerGetOffsetNumber(indexcursor) - 1] = 1;
   }

   tuplesort_empty = !tuplesort_getdatum(state->tuplesort, 1,
              &ts_val, &ts_isnull, ((void*)0));
   Assert(tuplesort_empty || !ts_isnull);
   if (!tuplesort_empty)
   {
    itemptr_decode(&decoded, DatumGetInt64(ts_val));
    indexcursor = &decoded;



    pfree(DatumGetPointer(ts_val));

   }
   else
   {

    indexcursor = ((void*)0);
   }
  }





  if ((tuplesort_empty ||
    ItemPointerCompare(indexcursor, &rootTuple) > 0) &&
   !in_index[root_offnum - 1])
  {
   MemoryContextReset(econtext->ecxt_per_tuple_memory);


   ExecStoreHeapTuple(heapTuple, slot, 0);





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
   index_insert(indexRelation,
       values,
       isnull,
       &rootTuple,
       heapRelation,
       indexInfo->ii_Unique ?
       UNIQUE_CHECK_YES : UNIQUE_CHECK_NO,
       indexInfo);

   state->tups_inserted += 1;
  }
 }

 table_endscan(scan);

 ExecDropSingleTupleTableSlot(slot);

 FreeExecutorState(estate);


 indexInfo->ii_ExpressionsState = NIL;
 indexInfo->ii_PredicateState = ((void*)0);
}
