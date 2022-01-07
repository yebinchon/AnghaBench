
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ N; scalar_t__ NaNcount; int sumX2; int sumX; } ;
struct TYPE_27__ {int dscale; } ;
typedef TYPE_1__ const NumericVar ;
typedef TYPE_2__ NumericAggState ;
typedef int * Numeric ;


 int accum_sum_final (int *,TYPE_1__ const*) ;
 scalar_t__ cmp_var (TYPE_1__ const*,TYPE_1__ const*) ;
 TYPE_1__ const const_nan ;
 TYPE_1__ const const_one ;
 TYPE_1__ const const_zero ;
 int div_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int,int) ;
 int free_var (TYPE_1__ const*) ;
 int init_var (TYPE_1__ const*) ;
 int int64_to_numericvar (scalar_t__,TYPE_1__ const*) ;
 int * make_result (TYPE_1__ const*) ;
 int mul_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int) ;
 int select_div_scale (TYPE_1__ const*,TYPE_1__ const*) ;
 int sqrt_var (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int sub_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static Numeric
numeric_stddev_internal(NumericAggState *state,
      bool variance, bool sample,
      bool *is_null)
{
 Numeric res;
 NumericVar vN,
    vsumX,
    vsumX2,
    vNminus1;
 const NumericVar *comp;
 int rscale;


 if (state == ((void*)0) || (state->N + state->NaNcount) == 0)
 {
  *is_null = 1;
  return ((void*)0);
 }

 *is_null = 0;

 if (state->NaNcount > 0)
  return make_result(&const_nan);

 init_var(&vN);
 init_var(&vsumX);
 init_var(&vsumX2);

 int64_to_numericvar(state->N, &vN);
 accum_sum_final(&(state->sumX), &vsumX);
 accum_sum_final(&(state->sumX2), &vsumX2);





 if (sample)
  comp = &const_one;
 else
  comp = &const_zero;

 if (cmp_var(&vN, comp) <= 0)
 {
  *is_null = 1;
  return ((void*)0);
 }

 init_var(&vNminus1);
 sub_var(&vN, &const_one, &vNminus1);


 rscale = vsumX.dscale * 2;

 mul_var(&vsumX, &vsumX, &vsumX, rscale);
 mul_var(&vN, &vsumX2, &vsumX2, rscale);
 sub_var(&vsumX2, &vsumX, &vsumX2);

 if (cmp_var(&vsumX2, &const_zero) <= 0)
 {

  res = make_result(&const_zero);
 }
 else
 {
  if (sample)
   mul_var(&vN, &vNminus1, &vNminus1, 0);
  else
   mul_var(&vN, &vN, &vNminus1, 0);
  rscale = select_div_scale(&vsumX2, &vNminus1);
  div_var(&vsumX2, &vNminus1, &vsumX, rscale, 1);
  if (!variance)
   sqrt_var(&vsumX, &vsumX, rscale);

  res = make_result(&vsumX);
 }

 free_var(&vNminus1);
 free_var(&vsumX);
 free_var(&vsumX2);

 return res;
}
