
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int memtupcount; scalar_t__ status; int bounded; int bound; int boundUsed; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int Assert (int) ;
 int SERIAL (TYPE_1__*) ;
 scalar_t__ TSS_BOUNDED ;
 scalar_t__ TSS_SORTEDINMEM ;
 int reversedirection (TYPE_1__*) ;
 int tuplesort_heap_delete_top (TYPE_1__*) ;

__attribute__((used)) static void
sort_bounded_heap(Tuplesortstate *state)
{
 int tupcount = state->memtupcount;

 Assert(state->status == TSS_BOUNDED);
 Assert(state->bounded);
 Assert(tupcount == state->bound);
 Assert(SERIAL(state));






 while (state->memtupcount > 1)
 {
  SortTuple stup = state->memtuples[0];


  tuplesort_heap_delete_top(state);
  state->memtuples[state->memtupcount] = stup;
 }
 state->memtupcount = tupcount;





 reversedirection(state);

 state->status = TSS_SORTEDINMEM;
 state->boundUsed = 1;
}
