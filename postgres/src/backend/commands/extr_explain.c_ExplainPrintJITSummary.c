
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {TYPE_2__* estate; } ;
struct TYPE_9__ {int es_jit_flags; int * es_jit_worker_instr; TYPE_1__* es_jit; } ;
struct TYPE_8__ {int instr; } ;
typedef TYPE_3__ QueryDesc ;
typedef TYPE_4__ JitInstrumentation ;
typedef int ExplainState ;


 int ExplainPrintJIT (int *,int,TYPE_4__*,int) ;
 int InstrJitAgg (TYPE_4__*,int *) ;
 int PGJIT_PERFORM ;

void
ExplainPrintJITSummary(ExplainState *es, QueryDesc *queryDesc)
{
 JitInstrumentation ji = {0};

 if (!(queryDesc->estate->es_jit_flags & PGJIT_PERFORM))
  return;





 if (queryDesc->estate->es_jit)
  InstrJitAgg(&ji, &queryDesc->estate->es_jit->instr);


 if (queryDesc->estate->es_jit_worker_instr)
  InstrJitAgg(&ji, queryDesc->estate->es_jit_worker_instr);

 ExplainPrintJIT(es, queryDesc->estate->es_jit_flags, &ji, -1);
}
