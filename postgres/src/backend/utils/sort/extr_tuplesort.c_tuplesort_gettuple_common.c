
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int status; int slabAllocatorUsed; int eof_reached; int tapeset; int * lastReturnedTuple; TYPE_2__* memtuples; int memtupcount; int result_tape; int randomAccess; int current; int bound; int bounded; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_16__ {int srctape; int * tuple; } ;
typedef TYPE_2__ SortTuple ;


 int Assert (int) ;
 int ERROR ;
 size_t LogicalTapeBackspace (int ,int ,unsigned int) ;
 int LogicalTapeRewindForWrite (int ,int) ;
 int READTUP (TYPE_1__*,TYPE_2__*,int ,unsigned int) ;
 int RELEASE_SLAB_SLOT (TYPE_1__*,int *) ;



 int WORKER (TYPE_1__*) ;
 int elog (int ,char*) ;
 unsigned int getlen (TYPE_1__*,int ,int) ;
 int mergereadnext (TYPE_1__*,int,TYPE_2__*) ;
 int tuplesort_heap_delete_top (TYPE_1__*) ;
 int tuplesort_heap_replace_top (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static bool
tuplesort_gettuple_common(Tuplesortstate *state, bool forward,
        SortTuple *stup)
{
 unsigned int tuplen;
 size_t nmoved;

 Assert(!WORKER(state));

 switch (state->status)
 {
  case 129:
   Assert(forward || state->randomAccess);
   Assert(!state->slabAllocatorUsed);
   if (forward)
   {
    if (state->current < state->memtupcount)
    {
     *stup = state->memtuples[state->current++];
     return 1;
    }
    state->eof_reached = 1;






    if (state->bounded && state->current >= state->bound)
     elog(ERROR, "retrieved too many tuples in a bounded sort");

    return 0;
   }
   else
   {
    if (state->current <= 0)
     return 0;





    if (state->eof_reached)
     state->eof_reached = 0;
    else
    {
     state->current--;
     if (state->current <= 0)
      return 0;
    }
    *stup = state->memtuples[state->current - 1];
    return 1;
   }
   break;

  case 128:
   Assert(forward || state->randomAccess);
   Assert(state->slabAllocatorUsed);





   if (state->lastReturnedTuple)
   {
    RELEASE_SLAB_SLOT(state, state->lastReturnedTuple);
    state->lastReturnedTuple = ((void*)0);
   }

   if (forward)
   {
    if (state->eof_reached)
     return 0;

    if ((tuplen = getlen(state, state->result_tape, 1)) != 0)
    {
     READTUP(state, stup, state->result_tape, tuplen);






     state->lastReturnedTuple = stup->tuple;

     return 1;
    }
    else
    {
     state->eof_reached = 1;
     return 0;
    }
   }







   if (state->eof_reached)
   {





    nmoved = LogicalTapeBackspace(state->tapeset,
             state->result_tape,
             2 * sizeof(unsigned int));
    if (nmoved == 0)
     return 0;
    else if (nmoved != 2 * sizeof(unsigned int))
     elog(ERROR, "unexpected tape position");
    state->eof_reached = 0;
   }
   else
   {




    nmoved = LogicalTapeBackspace(state->tapeset,
             state->result_tape,
             sizeof(unsigned int));
    if (nmoved == 0)
     return 0;
    else if (nmoved != sizeof(unsigned int))
     elog(ERROR, "unexpected tape position");
    tuplen = getlen(state, state->result_tape, 0);




    nmoved = LogicalTapeBackspace(state->tapeset,
             state->result_tape,
             tuplen + 2 * sizeof(unsigned int));
    if (nmoved == tuplen + sizeof(unsigned int))
    {







     return 0;
    }
    else if (nmoved != tuplen + 2 * sizeof(unsigned int))
     elog(ERROR, "bogus tuple length in backward scan");
   }

   tuplen = getlen(state, state->result_tape, 0);






   nmoved = LogicalTapeBackspace(state->tapeset,
            state->result_tape,
            tuplen);
   if (nmoved != tuplen)
    elog(ERROR, "bogus tuple length in backward scan");
   READTUP(state, stup, state->result_tape, tuplen);





   state->lastReturnedTuple = stup->tuple;

   return 1;

  case 130:
   Assert(forward);

   Assert(state->slabAllocatorUsed);





   if (state->lastReturnedTuple)
   {
    RELEASE_SLAB_SLOT(state, state->lastReturnedTuple);
    state->lastReturnedTuple = ((void*)0);
   }




   if (state->memtupcount > 0)
   {
    int srcTape = state->memtuples[0].srctape;
    SortTuple newtup;

    *stup = state->memtuples[0];





    state->lastReturnedTuple = stup->tuple;





    if (!mergereadnext(state, srcTape, &newtup))
    {




     tuplesort_heap_delete_top(state);






     LogicalTapeRewindForWrite(state->tapeset, srcTape);
     return 1;
    }
    newtup.srctape = srcTape;
    tuplesort_heap_replace_top(state, &newtup);
    return 1;
   }
   return 0;

  default:
   elog(ERROR, "invalid tuplesort state");
   return 0;
 }
}
