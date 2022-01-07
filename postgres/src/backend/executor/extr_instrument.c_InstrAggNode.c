
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int running; scalar_t__ firsttuple; int bufusage; scalar_t__ need_bufusage; scalar_t__ nfiltered2; scalar_t__ nfiltered1; scalar_t__ nloops; scalar_t__ ntuples2; scalar_t__ ntuples; scalar_t__ total; scalar_t__ startup; scalar_t__ tuplecount; int counter; } ;
typedef TYPE_1__ Instrumentation ;


 int BufferUsageAdd (int *,int *) ;
 int INSTR_TIME_ADD (int ,int ) ;

void
InstrAggNode(Instrumentation *dst, Instrumentation *add)
{
 if (!dst->running && add->running)
 {
  dst->running = 1;
  dst->firsttuple = add->firsttuple;
 }
 else if (dst->running && add->running && dst->firsttuple > add->firsttuple)
  dst->firsttuple = add->firsttuple;

 INSTR_TIME_ADD(dst->counter, add->counter);

 dst->tuplecount += add->tuplecount;
 dst->startup += add->startup;
 dst->total += add->total;
 dst->ntuples += add->ntuples;
 dst->ntuples2 += add->ntuples2;
 dst->nloops += add->nloops;
 dst->nfiltered1 += add->nfiltered1;
 dst->nfiltered2 += add->nfiltered2;


 if (dst->need_bufusage)
  BufferUsageAdd(&dst->bufusage, &add->bufusage);
}
