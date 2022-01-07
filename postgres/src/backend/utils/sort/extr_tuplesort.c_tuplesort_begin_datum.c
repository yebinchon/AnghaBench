
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {int nKeys; int abbrevNext; int tuples; TYPE_2__* sortKeys; TYPE_2__* onlyKey; int datumTypeLen; void* datumType; int readtup; int writetup; int copytup; int comparetup; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_8__ {int ssup_nulls_first; int abbreviate; int abbrev_converter; void* ssup_collation; int ssup_cxt; } ;
typedef int SortSupportData ;
typedef TYPE_2__* SortSupport ;
typedef int SortCoordinate ;
typedef void* Oid ;
typedef int MemoryContext ;


 int CurrentMemoryContext ;
 int DATUM_SORT ;
 int LOG ;
 int MemoryContextSwitchTo (int ) ;
 int PARALLEL_SORT (TYPE_1__*) ;
 int PrepareSortSupportFromOrderingOp (void*,TYPE_2__*) ;
 int TRACE_POSTGRESQL_SORT_START (int ,int,int,int,int,int ) ;
 int comparetup_datum ;
 int copytup_datum ;
 int elog (int ,char*,int,char) ;
 int get_typlenbyval (void*,int *,int*) ;
 scalar_t__ palloc0 (int) ;
 int readtup_datum ;
 scalar_t__ trace_sort ;
 TYPE_1__* tuplesort_begin_common (int,int ,int) ;
 int writetup_datum ;

Tuplesortstate *
tuplesort_begin_datum(Oid datumType, Oid sortOperator, Oid sortCollation,
       bool nullsFirstFlag, int workMem,
       SortCoordinate coordinate, bool randomAccess)
{
 Tuplesortstate *state = tuplesort_begin_common(workMem, coordinate,
               randomAccess);
 MemoryContext oldcontext;
 int16 typlen;
 bool typbyval;

 oldcontext = MemoryContextSwitchTo(state->sortcontext);
 state->nKeys = 1;

 TRACE_POSTGRESQL_SORT_START(DATUM_SORT,
        0,
        1,
        workMem,
        randomAccess,
        PARALLEL_SORT(state));

 state->comparetup = comparetup_datum;
 state->copytup = copytup_datum;
 state->writetup = writetup_datum;
 state->readtup = readtup_datum;
 state->abbrevNext = 10;

 state->datumType = datumType;


 get_typlenbyval(datumType, &typlen, &typbyval);
 state->datumTypeLen = typlen;
 state->tuples = !typbyval;


 state->sortKeys = (SortSupport) palloc0(sizeof(SortSupportData));

 state->sortKeys->ssup_cxt = CurrentMemoryContext;
 state->sortKeys->ssup_collation = sortCollation;
 state->sortKeys->ssup_nulls_first = nullsFirstFlag;
 state->sortKeys->abbreviate = !typbyval;

 PrepareSortSupportFromOrderingOp(sortOperator, state->sortKeys);







 if (!state->sortKeys->abbrev_converter)
  state->onlyKey = state->sortKeys;

 MemoryContextSwitchTo(oldcontext);

 return state;
}
