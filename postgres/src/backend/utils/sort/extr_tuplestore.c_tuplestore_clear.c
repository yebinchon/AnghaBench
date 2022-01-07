
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int memtupdeleted; int memtupcount; int truncated; int readptrcount; TYPE_2__* readptrs; scalar_t__ tuples; int status; int * memtuples; int * myfile; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_6__ {int eof_reached; scalar_t__ current; } ;
typedef TYPE_2__ TSReadPointer ;


 int BufFileClose (int *) ;
 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (int ) ;
 int TSS_INMEM ;
 int pfree (int ) ;

void
tuplestore_clear(Tuplestorestate *state)
{
 int i;
 TSReadPointer *readptr;

 if (state->myfile)
  BufFileClose(state->myfile);
 state->myfile = ((void*)0);
 if (state->memtuples)
 {
  for (i = state->memtupdeleted; i < state->memtupcount; i++)
  {
   FREEMEM(state, GetMemoryChunkSpace(state->memtuples[i]));
   pfree(state->memtuples[i]);
  }
 }
 state->status = TSS_INMEM;
 state->truncated = 0;
 state->memtupdeleted = 0;
 state->memtupcount = 0;
 state->tuples = 0;
 readptr = state->readptrs;
 for (i = 0; i < state->readptrcount; readptr++, i++)
 {
  readptr->eof_reached = 0;
  readptr->current = 0;
 }
}
