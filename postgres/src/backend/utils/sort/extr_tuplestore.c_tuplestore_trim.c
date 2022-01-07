
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int eflags; scalar_t__ status; int memtupcount; int readptrcount; int memtupdeleted; int truncated; TYPE_1__* readptrs; int ** memtuples; } ;
typedef TYPE_2__ Tuplestorestate ;
struct TYPE_5__ {int current; int eof_reached; } ;


 int Assert (int) ;
 int EXEC_FLAG_REWIND ;
 int FREEMEM (TYPE_2__*,int ) ;
 int GetMemoryChunkSpace (int *) ;
 int Min (int,int) ;
 scalar_t__ TSS_INMEM ;
 int memmove (int **,int **,int) ;
 int pfree (int *) ;

void
tuplestore_trim(Tuplestorestate *state)
{
 int oldest;
 int nremove;
 int i;





 if (state->eflags & EXEC_FLAG_REWIND)
  return;





 if (state->status != TSS_INMEM)
  return;


 oldest = state->memtupcount;
 for (i = 0; i < state->readptrcount; i++)
 {
  if (!state->readptrs[i].eof_reached)
   oldest = Min(oldest, state->readptrs[i].current);
 }
 nremove = oldest - 1;
 if (nremove <= 0)
  return;

 Assert(nremove >= state->memtupdeleted);
 Assert(nremove <= state->memtupcount);


 for (i = state->memtupdeleted; i < nremove; i++)
 {
  FREEMEM(state, GetMemoryChunkSpace(state->memtuples[i]));
  pfree(state->memtuples[i]);
  state->memtuples[i] = ((void*)0);
 }
 state->memtupdeleted = nremove;


 state->truncated = 1;







 if (nremove < state->memtupcount / 8)
  return;







 if (nremove + 1 == state->memtupcount)
  state->memtuples[0] = state->memtuples[nremove];
 else
  memmove(state->memtuples, state->memtuples + nremove,
    (state->memtupcount - nremove) * sizeof(void *));

 state->memtupdeleted = 0;
 state->memtupcount -= nremove;
 for (i = 0; i < state->readptrcount; i++)
 {
  if (!state->readptrs[i].eof_reached)
   state->readptrs[i].current -= nremove;
 }
}
