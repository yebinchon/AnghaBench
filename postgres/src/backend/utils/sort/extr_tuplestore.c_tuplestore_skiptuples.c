
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {size_t activeptr; int status; scalar_t__ memtupcount; scalar_t__ memtupdeleted; int truncated; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_6__ {int eflags; int eof_reached; scalar_t__ current; } ;
typedef TYPE_2__ TSReadPointer ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int EXEC_FLAG_BACKWARD ;

 int pfree (void*) ;
 void* tuplestore_gettuple (TYPE_1__*,int,int*) ;

bool
tuplestore_skiptuples(Tuplestorestate *state, int64 ntuples, bool forward)
{
 TSReadPointer *readptr = &state->readptrs[state->activeptr];

 Assert(forward || (readptr->eflags & EXEC_FLAG_BACKWARD));

 if (ntuples <= 0)
  return 1;

 switch (state->status)
 {
  case 128:
   if (forward)
   {
    if (readptr->eof_reached)
     return 0;
    if (state->memtupcount - readptr->current >= ntuples)
    {
     readptr->current += ntuples;
     return 1;
    }
    readptr->current = state->memtupcount;
    readptr->eof_reached = 1;
    return 0;
   }
   else
   {
    if (readptr->eof_reached)
    {
     readptr->current = state->memtupcount;
     readptr->eof_reached = 0;
     ntuples--;
    }
    if (readptr->current - state->memtupdeleted > ntuples)
    {
     readptr->current -= ntuples;
     return 1;
    }
    Assert(!state->truncated);
    readptr->current = state->memtupdeleted;
    return 0;
   }
   break;

  default:

   while (ntuples-- > 0)
   {
    void *tuple;
    bool should_free;

    tuple = tuplestore_gettuple(state, forward, &should_free);

    if (tuple == ((void*)0))
     return 0;
    if (should_free)
     pfree(tuple);
    CHECK_FOR_INTERRUPTS();
   }
   return 1;
 }
}
