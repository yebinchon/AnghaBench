
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int maxScale; int maxScaleCount; int sumX2; scalar_t__ calcSumX2; int sumX; int N; int agg_context; int NaNcount; } ;
struct TYPE_10__ {int dscale; } ;
typedef TYPE_1__ NumericVar ;
typedef TYPE_2__ NumericAggState ;
typedef int Numeric ;
typedef int MemoryContext ;


 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NUMERIC_IS_NAN (int ) ;
 int accum_sum_add (int *,TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int init_var_from_num (int ,TYPE_1__*) ;
 int mul_var (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void
do_numeric_accum(NumericAggState *state, Numeric newval)
{
 NumericVar X;
 NumericVar X2;
 MemoryContext old_context;


 if (NUMERIC_IS_NAN(newval))
 {
  state->NaNcount++;
  return;
 }


 init_var_from_num(newval, &X);





 if (X.dscale > state->maxScale)
 {
  state->maxScale = X.dscale;
  state->maxScaleCount = 1;
 }
 else if (X.dscale == state->maxScale)
  state->maxScaleCount++;


 if (state->calcSumX2)
 {
  init_var(&X2);
  mul_var(&X, &X, &X2, X.dscale * 2);
 }


 old_context = MemoryContextSwitchTo(state->agg_context);

 state->N++;


 accum_sum_add(&(state->sumX), &X);

 if (state->calcSumX2)
  accum_sum_add(&(state->sumX2), &X2);

 MemoryContextSwitchTo(old_context);
}
