
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {int status; scalar_t__ memtupcount; scalar_t__ current; int eof_reached; scalar_t__ bound; int sortcontext; int bounded; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;
typedef int MemoryContext ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;



 int WORKER (TYPE_1__*) ;
 int elog (int ,char*) ;
 int tuplesort_gettuple_common (TYPE_1__*,int,int *) ;

bool
tuplesort_skiptuples(Tuplesortstate *state, int64 ntuples, bool forward)
{
 MemoryContext oldcontext;





 Assert(forward);
 Assert(ntuples >= 0);
 Assert(!WORKER(state));

 switch (state->status)
 {
  case 129:
   if (state->memtupcount - state->current >= ntuples)
   {
    state->current += ntuples;
    return 1;
   }
   state->current = state->memtupcount;
   state->eof_reached = 1;






   if (state->bounded && state->current >= state->bound)
    elog(ERROR, "retrieved too many tuples in a bounded sort");

   return 0;

  case 128:
  case 130:





   oldcontext = MemoryContextSwitchTo(state->sortcontext);
   while (ntuples-- > 0)
   {
    SortTuple stup;

    if (!tuplesort_gettuple_common(state, forward, &stup))
    {
     MemoryContextSwitchTo(oldcontext);
     return 0;
    }
    CHECK_FOR_INTERRUPTS();
   }
   MemoryContextSwitchTo(oldcontext);
   return 1;

  default:
   elog(ERROR, "invalid tuplesort state");
   return 0;
 }
}
