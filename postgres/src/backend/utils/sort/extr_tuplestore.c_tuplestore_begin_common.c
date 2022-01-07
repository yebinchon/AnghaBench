
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eflags; int interXact; int truncated; int allowedMem; int availMem; int memtupsize; int growmemtuples; void** memtuples; int readptrcount; int readptrsize; TYPE_2__* readptrs; scalar_t__ activeptr; scalar_t__ tuples; scalar_t__ memtupcount; scalar_t__ memtupdeleted; int resowner; int context; int * myfile; int status; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_6__ {int eflags; int eof_reached; scalar_t__ current; } ;
typedef TYPE_2__ TSReadPointer ;


 int ALLOCSET_SEPARATE_THRESHOLD ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int GetMemoryChunkSpace (void**) ;
 int Max (int,int) ;
 int TSS_INMEM ;
 int USEMEM (TYPE_1__*,int ) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static Tuplestorestate *
tuplestore_begin_common(int eflags, bool interXact, int maxKBytes)
{
 Tuplestorestate *state;

 state = (Tuplestorestate *) palloc0(sizeof(Tuplestorestate));

 state->status = TSS_INMEM;
 state->eflags = eflags;
 state->interXact = interXact;
 state->truncated = 0;
 state->allowedMem = maxKBytes * 1024L;
 state->availMem = state->allowedMem;
 state->myfile = ((void*)0);
 state->context = CurrentMemoryContext;
 state->resowner = CurrentResourceOwner;

 state->memtupdeleted = 0;
 state->memtupcount = 0;
 state->tuples = 0;





 state->memtupsize = Max(16384 / sizeof(void *),
       ALLOCSET_SEPARATE_THRESHOLD / sizeof(void *) + 1);

 state->growmemtuples = 1;
 state->memtuples = (void **) palloc(state->memtupsize * sizeof(void *));

 USEMEM(state, GetMemoryChunkSpace(state->memtuples));

 state->activeptr = 0;
 state->readptrcount = 1;
 state->readptrsize = 8;
 state->readptrs = (TSReadPointer *)
  palloc(state->readptrsize * sizeof(TSReadPointer));

 state->readptrs[0].eflags = eflags;
 state->readptrs[0].eof_reached = 0;
 state->readptrs[0].current = 0;

 return state;
}
