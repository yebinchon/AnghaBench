
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_24__ {int nKeys; int abbrevNext; TYPE_3__* sortKeys; int estate; TYPE_20__* indexInfo; int tupDesc; int readtup; int writetup; int copytup; int comparetup; int sortcontext; } ;
typedef TYPE_2__ Tuplesortstate ;
typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_29__ {TYPE_4__* scankeys; } ;
struct TYPE_28__ {int * ecxt_scantuple; } ;
struct TYPE_27__ {TYPE_1__* rd_rel; } ;
struct TYPE_26__ {int sk_flags; scalar_t__ sk_attno; int sk_collation; } ;
struct TYPE_25__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int ssup_collation; int ssup_cxt; } ;
struct TYPE_23__ {int * ii_Expressions; } ;
struct TYPE_22__ {scalar_t__ relam; } ;
typedef int SortSupportData ;
typedef TYPE_3__* SortSupport ;
typedef int SortCoordinate ;
typedef TYPE_4__* ScanKey ;
typedef TYPE_5__* Relation ;
typedef int MemoryContext ;
typedef TYPE_6__ ExprContext ;
typedef TYPE_7__* BTScanInsert ;


 int Assert (int) ;
 int AssertState (int) ;
 int BTGreaterStrategyNumber ;
 int BTLessStrategyNumber ;
 scalar_t__ BTREE_AM_OID ;
 TYPE_20__* BuildIndexInfo (TYPE_5__*) ;
 int CLUSTER_SORT ;
 int CreateExecutorState () ;
 int CurrentMemoryContext ;
 TYPE_6__* GetPerTupleExprContext (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_5__*) ;
 int LOG ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int PARALLEL_SORT (TYPE_2__*) ;
 int PrepareSortSupportFromIndexRel (TYPE_5__*,int ,TYPE_3__*) ;
 int RelationGetNumberOfAttributes (TYPE_5__*) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int TRACE_POSTGRESQL_SORT_START (int ,int,int,int,int,int ) ;
 int TTSOpsHeapTuple ;
 TYPE_7__* _bt_mkscankey (TYPE_5__*,int *) ;
 int comparetup_cluster ;
 int copytup_cluster ;
 int elog (int ,char*,int ,int,char) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_7__*) ;
 int readtup_cluster ;
 scalar_t__ trace_sort ;
 TYPE_2__* tuplesort_begin_common (int,int ,int) ;
 int writetup_cluster ;

Tuplesortstate *
tuplesort_begin_cluster(TupleDesc tupDesc,
      Relation indexRel,
      int workMem,
      SortCoordinate coordinate, bool randomAccess)
{
 Tuplesortstate *state = tuplesort_begin_common(workMem, coordinate,
               randomAccess);
 BTScanInsert indexScanKey;
 MemoryContext oldcontext;
 int i;

 Assert(indexRel->rd_rel->relam == BTREE_AM_OID);

 oldcontext = MemoryContextSwitchTo(state->sortcontext);
 state->nKeys = IndexRelationGetNumberOfKeyAttributes(indexRel);

 TRACE_POSTGRESQL_SORT_START(CLUSTER_SORT,
        0,
        state->nKeys,
        workMem,
        randomAccess,
        PARALLEL_SORT(state));

 state->comparetup = comparetup_cluster;
 state->copytup = copytup_cluster;
 state->writetup = writetup_cluster;
 state->readtup = readtup_cluster;
 state->abbrevNext = 10;

 state->indexInfo = BuildIndexInfo(indexRel);

 state->tupDesc = tupDesc;

 indexScanKey = _bt_mkscankey(indexRel, ((void*)0));

 if (state->indexInfo->ii_Expressions != ((void*)0))
 {
  TupleTableSlot *slot;
  ExprContext *econtext;







  state->estate = CreateExecutorState();
  slot = MakeSingleTupleTableSlot(tupDesc, &TTSOpsHeapTuple);
  econtext = GetPerTupleExprContext(state->estate);
  econtext->ecxt_scantuple = slot;
 }


 state->sortKeys = (SortSupport) palloc0(state->nKeys *
           sizeof(SortSupportData));

 for (i = 0; i < state->nKeys; i++)
 {
  SortSupport sortKey = state->sortKeys + i;
  ScanKey scanKey = indexScanKey->scankeys + i;
  int16 strategy;

  sortKey->ssup_cxt = CurrentMemoryContext;
  sortKey->ssup_collation = scanKey->sk_collation;
  sortKey->ssup_nulls_first =
   (scanKey->sk_flags & SK_BT_NULLS_FIRST) != 0;
  sortKey->ssup_attno = scanKey->sk_attno;

  sortKey->abbreviate = (i == 0);

  AssertState(sortKey->ssup_attno != 0);

  strategy = (scanKey->sk_flags & SK_BT_DESC) != 0 ?
   BTGreaterStrategyNumber : BTLessStrategyNumber;

  PrepareSortSupportFromIndexRel(indexRel, strategy, sortKey);
 }

 pfree(indexScanKey);

 MemoryContextSwitchTo(oldcontext);

 return state;
}
