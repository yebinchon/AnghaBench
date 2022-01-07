
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int memtupcount; scalar_t__ status; int bounded; int bound; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ COMPARETUP (TYPE_1__*,int *,int *) ;
 int SERIAL (TYPE_1__*) ;
 scalar_t__ TSS_BOUNDED ;
 scalar_t__ TSS_INITIAL ;
 int free_sort_tuple (TYPE_1__*,int *) ;
 int reversedirection (TYPE_1__*) ;
 int tuplesort_heap_insert (TYPE_1__*,int *) ;
 int tuplesort_heap_replace_top (TYPE_1__*,int *) ;

__attribute__((used)) static void
make_bounded_heap(Tuplesortstate *state)
{
 int tupcount = state->memtupcount;
 int i;

 Assert(state->status == TSS_INITIAL);
 Assert(state->bounded);
 Assert(tupcount >= state->bound);
 Assert(SERIAL(state));


 reversedirection(state);

 state->memtupcount = 0;
 for (i = 0; i < tupcount; i++)
 {
  if (state->memtupcount < state->bound)
  {


   SortTuple stup = state->memtuples[i];

   tuplesort_heap_insert(state, &stup);
  }
  else
  {





   if (COMPARETUP(state, &state->memtuples[i], &state->memtuples[0]) <= 0)
   {
    free_sort_tuple(state, &state->memtuples[i]);
    CHECK_FOR_INTERRUPTS();
   }
   else
    tuplesort_heap_replace_top(state, &state->memtuples[i]);
  }
 }

 Assert(state->memtupcount == state->bound);
 state->status = TSS_BOUNDED;
}
