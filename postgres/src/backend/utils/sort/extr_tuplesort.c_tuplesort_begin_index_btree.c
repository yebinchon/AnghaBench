
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_11__ {int nKeys; int abbrevNext; int enforceUnique; TYPE_2__* sortKeys; void* indexRel; void* heapRel; int readtup; int writetup; int copytup; int comparetup; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_14__ {TYPE_3__* scankeys; } ;
struct TYPE_13__ {int sk_flags; scalar_t__ sk_attno; int sk_collation; } ;
struct TYPE_12__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int ssup_collation; int ssup_cxt; } ;
typedef int SortSupportData ;
typedef TYPE_2__* SortSupport ;
typedef int SortCoordinate ;
typedef TYPE_3__* ScanKey ;
typedef void* Relation ;
typedef int MemoryContext ;
typedef TYPE_4__* BTScanInsert ;


 int AssertState (int) ;
 int BTGreaterStrategyNumber ;
 int BTLessStrategyNumber ;
 int CurrentMemoryContext ;
 int INDEX_SORT ;
 int IndexRelationGetNumberOfKeyAttributes (void*) ;
 int LOG ;
 int MemoryContextSwitchTo (int ) ;
 int PARALLEL_SORT (TYPE_1__*) ;
 int PrepareSortSupportFromIndexRel (void*,int ,TYPE_2__*) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int TRACE_POSTGRESQL_SORT_START (int ,int,int,int,int,int ) ;
 TYPE_4__* _bt_mkscankey (void*,int *) ;
 int comparetup_index_btree ;
 int copytup_index ;
 int elog (int ,char*,char,int,char) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_4__*) ;
 int readtup_index ;
 scalar_t__ trace_sort ;
 TYPE_1__* tuplesort_begin_common (int,int ,int) ;
 int writetup_index ;

Tuplesortstate *
tuplesort_begin_index_btree(Relation heapRel,
       Relation indexRel,
       bool enforceUnique,
       int workMem,
       SortCoordinate coordinate,
       bool randomAccess)
{
 Tuplesortstate *state = tuplesort_begin_common(workMem, coordinate,
               randomAccess);
 BTScanInsert indexScanKey;
 MemoryContext oldcontext;
 int i;

 oldcontext = MemoryContextSwitchTo(state->sortcontext);
 state->nKeys = IndexRelationGetNumberOfKeyAttributes(indexRel);

 TRACE_POSTGRESQL_SORT_START(INDEX_SORT,
        enforceUnique,
        state->nKeys,
        workMem,
        randomAccess,
        PARALLEL_SORT(state));

 state->comparetup = comparetup_index_btree;
 state->copytup = copytup_index;
 state->writetup = writetup_index;
 state->readtup = readtup_index;
 state->abbrevNext = 10;

 state->heapRel = heapRel;
 state->indexRel = indexRel;
 state->enforceUnique = enforceUnique;

 indexScanKey = _bt_mkscankey(indexRel, ((void*)0));


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
