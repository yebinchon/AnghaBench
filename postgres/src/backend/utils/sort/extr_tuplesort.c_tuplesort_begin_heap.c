
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nKeys; int abbrevNext; TYPE_2__* sortKeys; TYPE_2__* onlyKey; int tupDesc; int readtup; int writetup; int copytup; int comparetup; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleDesc ;
struct TYPE_8__ {int ssup_nulls_first; int abbreviate; int abbrev_converter; scalar_t__ ssup_attno; scalar_t__ ssup_collation; int ssup_cxt; } ;
typedef int SortSupportData ;
typedef TYPE_2__* SortSupport ;
typedef int SortCoordinate ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef scalar_t__ AttrNumber ;


 int AssertArg (int) ;
 int CurrentMemoryContext ;
 int HEAP_SORT ;
 int LOG ;
 int MemoryContextSwitchTo (int ) ;
 int PARALLEL_SORT (TYPE_1__*) ;
 int PrepareSortSupportFromOrderingOp (scalar_t__,TYPE_2__*) ;
 int TRACE_POSTGRESQL_SORT_START (int ,int,int,int,int,int ) ;
 int comparetup_heap ;
 int copytup_heap ;
 int elog (int ,char*,int,int,char) ;
 scalar_t__ palloc0 (int) ;
 int readtup_heap ;
 scalar_t__ trace_sort ;
 TYPE_1__* tuplesort_begin_common (int,int ,int) ;
 int writetup_heap ;

Tuplesortstate *
tuplesort_begin_heap(TupleDesc tupDesc,
      int nkeys, AttrNumber *attNums,
      Oid *sortOperators, Oid *sortCollations,
      bool *nullsFirstFlags,
      int workMem, SortCoordinate coordinate, bool randomAccess)
{
 Tuplesortstate *state = tuplesort_begin_common(workMem, coordinate,
               randomAccess);
 MemoryContext oldcontext;
 int i;

 oldcontext = MemoryContextSwitchTo(state->sortcontext);

 AssertArg(nkeys > 0);
 state->nKeys = nkeys;

 TRACE_POSTGRESQL_SORT_START(HEAP_SORT,
        0,
        nkeys,
        workMem,
        randomAccess,
        PARALLEL_SORT(state));

 state->comparetup = comparetup_heap;
 state->copytup = copytup_heap;
 state->writetup = writetup_heap;
 state->readtup = readtup_heap;

 state->tupDesc = tupDesc;
 state->abbrevNext = 10;


 state->sortKeys = (SortSupport) palloc0(nkeys * sizeof(SortSupportData));

 for (i = 0; i < nkeys; i++)
 {
  SortSupport sortKey = state->sortKeys + i;

  AssertArg(attNums[i] != 0);
  AssertArg(sortOperators[i] != 0);

  sortKey->ssup_cxt = CurrentMemoryContext;
  sortKey->ssup_collation = sortCollations[i];
  sortKey->ssup_nulls_first = nullsFirstFlags[i];
  sortKey->ssup_attno = attNums[i];

  sortKey->abbreviate = (i == 0);

  PrepareSortSupportFromOrderingOp(sortOperators[i], sortKey);
 }







 if (nkeys == 1 && !state->sortKeys->abbrev_converter)
  state->onlyKey = state->sortKeys;

 MemoryContextSwitchTo(oldcontext);

 return state;
}
