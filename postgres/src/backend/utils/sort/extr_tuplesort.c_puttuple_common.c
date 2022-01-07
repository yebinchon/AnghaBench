
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int status; int memtupcount; int memtupsize; void** memtuples; int bound; int ru_start; int bounded; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef void* SortTuple ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int COMPARETUP (TYPE_1__*,void**,void**) ;
 int ERROR ;
 int LACKMEM (TYPE_1__*) ;
 int LEADER (TYPE_1__*) ;
 int LOG ;



 int dumptuples (TYPE_1__*,int) ;
 int elog (int ,char*,...) ;
 int free_sort_tuple (TYPE_1__*,void**) ;
 int grow_memtuples (TYPE_1__*) ;
 int inittapes (TYPE_1__*,int) ;
 int make_bounded_heap (TYPE_1__*) ;
 int pg_rusage_show (int *) ;
 int trace_sort ;
 int tuplesort_heap_replace_top (TYPE_1__*,void**) ;

__attribute__((used)) static void
puttuple_common(Tuplesortstate *state, SortTuple *tuple)
{
 Assert(!LEADER(state));

 switch (state->status)
 {
  case 128:
   if (state->memtupcount >= state->memtupsize - 1)
   {
    (void) grow_memtuples(state);
    Assert(state->memtupcount < state->memtupsize);
   }
   state->memtuples[state->memtupcount++] = *tuple;
   if (state->bounded &&
    (state->memtupcount > state->bound * 2 ||
     (state->memtupcount > state->bound && LACKMEM(state))))
   {






    make_bounded_heap(state);
    return;
   }




   if (state->memtupcount < state->memtupsize && !LACKMEM(state))
    return;




   inittapes(state, 1);




   dumptuples(state, 0);
   break;

  case 130:
   if (COMPARETUP(state, tuple, &state->memtuples[0]) <= 0)
   {

    free_sort_tuple(state, tuple);
    CHECK_FOR_INTERRUPTS();
   }
   else
   {

    free_sort_tuple(state, &state->memtuples[0]);
    tuplesort_heap_replace_top(state, tuple);
   }
   break;

  case 129:




   state->memtuples[state->memtupcount++] = *tuple;




   dumptuples(state, 0);
   break;

  default:
   elog(ERROR, "invalid tuplesort state");
   break;
 }
}
