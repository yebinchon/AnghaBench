
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int calcSumX2; int agg_context; } ;
typedef TYPE_1__ NumericAggState ;


 int CurrentMemoryContext ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static NumericAggState *
makeNumericAggStateCurrentContext(bool calcSumX2)
{
 NumericAggState *state;

 state = (NumericAggState *) palloc0(sizeof(NumericAggState));
 state->calcSumX2 = calcSumX2;
 state->agg_context = CurrentMemoryContext;

 return state;
}
