
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ memtupcount; scalar_t__ memtupsize; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ COMPARETUP (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
tuplesort_heap_insert(Tuplesortstate *state, SortTuple *tuple)
{
 SortTuple *memtuples;
 int j;

 memtuples = state->memtuples;
 Assert(state->memtupcount < state->memtupsize);

 CHECK_FOR_INTERRUPTS();





 j = state->memtupcount++;
 while (j > 0)
 {
  int i = (j - 1) >> 1;

  if (COMPARETUP(state, tuple, &memtuples[i]) >= 0)
   break;
  memtuples[j] = memtuples[i];
  j = i;
 }
 memtuples[j] = *tuple;
}
