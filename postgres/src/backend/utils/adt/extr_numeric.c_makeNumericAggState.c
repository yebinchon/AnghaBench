
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int calcSumX2; int agg_context; } ;
typedef TYPE_1__ NumericAggState ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;


 int AggCheckCallContext (int ,int *) ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int elog (int ,char*) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static NumericAggState *
makeNumericAggState(FunctionCallInfo fcinfo, bool calcSumX2)
{
 NumericAggState *state;
 MemoryContext agg_context;
 MemoryContext old_context;

 if (!AggCheckCallContext(fcinfo, &agg_context))
  elog(ERROR, "aggregate function called in non-aggregate context");

 old_context = MemoryContextSwitchTo(agg_context);

 state = (NumericAggState *) palloc0(sizeof(NumericAggState));
 state->calcSumX2 = calcSumX2;
 state->agg_context = agg_context;

 MemoryContextSwitchTo(old_context);

 return state;
}
