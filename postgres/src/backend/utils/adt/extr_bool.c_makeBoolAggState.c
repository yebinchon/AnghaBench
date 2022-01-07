
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aggtrue; scalar_t__ aggcount; } ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;
typedef TYPE_1__ BoolAggState ;


 int AggCheckCallContext (int ,int *) ;
 int ERROR ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int elog (int ,char*) ;

__attribute__((used)) static BoolAggState *
makeBoolAggState(FunctionCallInfo fcinfo)
{
 BoolAggState *state;
 MemoryContext agg_context;

 if (!AggCheckCallContext(fcinfo, &agg_context))
  elog(ERROR, "aggregate function called in non-aggregate context");

 state = (BoolAggState *) MemoryContextAlloc(agg_context,
            sizeof(BoolAggState));
 state->aggcount = 0;
 state->aggtrue = 0;

 return state;
}
