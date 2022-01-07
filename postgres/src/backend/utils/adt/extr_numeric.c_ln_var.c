
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int weight; scalar_t__ ndigits; } ;
typedef TYPE_1__ const NumericVar ;


 int DEC_DIGITS ;
 int ERRCODE_INVALID_ARGUMENT_FOR_LOG ;
 int ERROR ;
 int Max (int,int ) ;
 int NUMERIC_MIN_DISPLAY_SCALE ;
 int add_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int cmp_var (TYPE_1__ const*,int *) ;
 TYPE_1__ const const_one ;
 int const_one_point_one ;
 TYPE_1__ const const_two ;
 int const_zero ;
 int const_zero_point_nine ;
 int div_var_fast (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int free_var (TYPE_1__ const*) ;
 int init_var (TYPE_1__ const*) ;
 int mul_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int) ;
 int set_var_from_var (TYPE_1__ const*,TYPE_1__ const*) ;
 int sqrt_var (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int sub_var (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static void
ln_var(const NumericVar *arg, NumericVar *result, int rscale)
{
 NumericVar x;
 NumericVar xx;
 NumericVar ni;
 NumericVar elem;
 NumericVar fact;
 int local_rscale;
 int cmp;

 cmp = cmp_var(arg, &const_zero);
 if (cmp == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_ARGUMENT_FOR_LOG),
     errmsg("cannot take logarithm of zero")));
 else if (cmp < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_ARGUMENT_FOR_LOG),
     errmsg("cannot take logarithm of a negative number")));

 init_var(&x);
 init_var(&xx);
 init_var(&ni);
 init_var(&elem);
 init_var(&fact);

 set_var_from_var(arg, &x);
 set_var_from_var(&const_two, &fact);
 while (cmp_var(&x, &const_zero_point_nine) <= 0)
 {
  local_rscale = rscale - x.weight * DEC_DIGITS / 2 + 8;
  local_rscale = Max(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
  sqrt_var(&x, &x, local_rscale);
  mul_var(&fact, &const_two, &fact, 0);
 }
 while (cmp_var(&x, &const_one_point_one) >= 0)
 {
  local_rscale = rscale - x.weight * DEC_DIGITS / 2 + 8;
  local_rscale = Max(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
  sqrt_var(&x, &x, local_rscale);
  mul_var(&fact, &const_two, &fact, 0);
 }
 local_rscale = rscale + 8;

 sub_var(&x, &const_one, result);
 add_var(&x, &const_one, &elem);
 div_var_fast(result, &elem, result, local_rscale, 1);
 set_var_from_var(result, &xx);
 mul_var(result, result, &x, local_rscale);

 set_var_from_var(&const_one, &ni);

 for (;;)
 {
  add_var(&ni, &const_two, &ni);
  mul_var(&xx, &x, &xx, local_rscale);
  div_var_fast(&xx, &ni, &elem, local_rscale, 1);

  if (elem.ndigits == 0)
   break;

  add_var(result, &elem, result);

  if (elem.weight < (result->weight - local_rscale * 2 / DEC_DIGITS))
   break;
 }


 mul_var(result, &fact, result, rscale);

 free_var(&x);
 free_var(&xx);
 free_var(&ni);
 free_var(&elem);
 free_var(&fact);
}
