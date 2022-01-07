
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; scalar_t__ memtupcount; int readptrcount; int eflags; TYPE_1__* readptrs; } ;
typedef TYPE_2__ Tuplestorestate ;
struct TYPE_4__ {int eflags; } ;


 int ERROR ;
 scalar_t__ TSS_INMEM ;
 int elog (int ,char*) ;

void
tuplestore_set_eflags(Tuplestorestate *state, int eflags)
{
 int i;

 if (state->status != TSS_INMEM || state->memtupcount != 0)
  elog(ERROR, "too late to call tuplestore_set_eflags");

 state->readptrs[0].eflags = eflags;
 for (i = 1; i < state->readptrcount; i++)
  eflags |= state->readptrs[i].eflags;
 state->eflags = eflags;
}
