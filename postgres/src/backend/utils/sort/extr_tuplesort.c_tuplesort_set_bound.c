
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_7__ {scalar_t__ status; scalar_t__ memtupcount; int bounded; int bound; TYPE_1__* sortKeys; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_6__ {int * abbrev_full_comparator; int * abbrev_abort; int * comparator; int * abbrev_converter; } ;


 int Assert (int) ;
 int INT_MAX ;
 scalar_t__ LEADER (TYPE_2__*) ;
 scalar_t__ TSS_INITIAL ;
 int WORKER (TYPE_2__*) ;
 int optimize_bounded_sort ;

void
tuplesort_set_bound(Tuplesortstate *state, int64 bound)
{

 Assert(state->status == TSS_INITIAL && state->memtupcount == 0);

 Assert(!state->bounded);

 Assert(!WORKER(state));


 if (LEADER(state))
  return;
 if (bound > (int64) (INT_MAX / 2))
  return;

 state->bounded = 1;
 state->bound = (int) bound;






 state->sortKeys->abbrev_converter = ((void*)0);
 if (state->sortKeys->abbrev_full_comparator)
  state->sortKeys->comparator = state->sortKeys->abbrev_full_comparator;


 state->sortKeys->abbrev_abort = ((void*)0);
 state->sortKeys->abbrev_full_comparator = ((void*)0);
}
