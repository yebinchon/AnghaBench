
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int maxScale; int maxScaleCount; int N; int sumX2; scalar_t__ calcSumX2; int sumX; int agg_context; int NaNcount; } ;
struct TYPE_10__ {int dscale; scalar_t__ sign; } ;
typedef TYPE_1__ NumericVar ;
typedef TYPE_2__ NumericAggState ;
typedef int Numeric ;
typedef int MemoryContext ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NUMERIC_IS_NAN (int ) ;
 scalar_t__ NUMERIC_NEG ;
 scalar_t__ NUMERIC_POS ;
 int accum_sum_add (int *,TYPE_1__*) ;
 int accum_sum_reset (int *) ;
 int init_var (TYPE_1__*) ;
 int init_var_from_num (int ,TYPE_1__*) ;
 int mul_var (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static bool
do_numeric_discard(NumericAggState *state, Numeric newval)
{
 NumericVar X;
 NumericVar X2;
 MemoryContext old_context;


 if (NUMERIC_IS_NAN(newval))
 {
  state->NaNcount--;
  return 1;
 }


 init_var_from_num(newval, &X);
 if (X.dscale == state->maxScale)
 {
  if (state->maxScaleCount > 1 || state->maxScale == 0)
  {




   state->maxScaleCount--;
  }
  else if (state->N == 1)
  {

   state->maxScale = 0;
   state->maxScaleCount = 0;
  }
  else
  {

   return 0;
  }
 }


 if (state->calcSumX2)
 {
  init_var(&X2);
  mul_var(&X, &X, &X2, X.dscale * 2);
 }


 old_context = MemoryContextSwitchTo(state->agg_context);

 if (state->N-- > 1)
 {

  X.sign = (X.sign == NUMERIC_POS ? NUMERIC_NEG : NUMERIC_POS);
  accum_sum_add(&(state->sumX), &X);

  if (state->calcSumX2)
  {

   X2.sign = NUMERIC_NEG;
   accum_sum_add(&(state->sumX2), &X2);
  }
 }
 else
 {

  Assert(state->N == 0);

  accum_sum_reset(&state->sumX);
  if (state->calcSumX2)
   accum_sum_reset(&state->sumX2);
 }

 MemoryContextSwitchTo(old_context);

 return 1;
}
