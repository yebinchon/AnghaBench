
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int memtupcount; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ COMPARETUP (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
tuplesort_heap_replace_top(Tuplesortstate *state, SortTuple *tuple)
{
 SortTuple *memtuples = state->memtuples;
 unsigned int i,
    n;

 Assert(state->memtupcount >= 1);

 CHECK_FOR_INTERRUPTS();






 n = state->memtupcount;
 i = 0;
 for (;;)
 {
  unsigned int j = 2 * i + 1;

  if (j >= n)
   break;
  if (j + 1 < n &&
   COMPARETUP(state, &memtuples[j], &memtuples[j + 1]) > 0)
   j++;
  if (COMPARETUP(state, tuple, &memtuples[j]) <= 0)
   break;
  memtuples[i] = memtuples[j];
  i = j;
 }
 memtuples[i] = *tuple;
}
