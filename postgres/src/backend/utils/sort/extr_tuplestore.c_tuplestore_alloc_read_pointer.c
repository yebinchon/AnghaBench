
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; scalar_t__ memtupcount; int eflags; size_t readptrcount; size_t readptrsize; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_6__ {int eflags; } ;
typedef TYPE_2__ TSReadPointer ;


 int ERROR ;
 scalar_t__ TSS_INMEM ;
 int elog (int ,char*) ;
 scalar_t__ repalloc (TYPE_2__*,int) ;

int
tuplestore_alloc_read_pointer(Tuplestorestate *state, int eflags)
{

 if (state->status != TSS_INMEM || state->memtupcount != 0)
 {
  if ((state->eflags | eflags) != state->eflags)
   elog(ERROR, "too late to require new tuplestore eflags");
 }


 if (state->readptrcount >= state->readptrsize)
 {
  int newcnt = state->readptrsize * 2;

  state->readptrs = (TSReadPointer *)
   repalloc(state->readptrs, newcnt * sizeof(TSReadPointer));
  state->readptrsize = newcnt;
 }


 state->readptrs[state->readptrcount] = state->readptrs[0];
 state->readptrs[state->readptrcount].eflags = eflags;

 state->eflags |= eflags;

 return state->readptrcount++;
}
