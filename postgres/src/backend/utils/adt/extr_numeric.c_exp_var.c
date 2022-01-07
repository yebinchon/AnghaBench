
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int dscale; scalar_t__ ndigits; int weight; } ;
typedef TYPE_1__ NumericVar ;


 double Abs (double) ;
 int DEC_DIGITS ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int Max (int,int ) ;
 int NUMERIC_MAX_RESULT_SCALE ;
 int NUMERIC_MIN_DISPLAY_SCALE ;
 int add_var (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__ const_one ;
 TYPE_1__ const const_two ;
 int div_var_fast (TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int mul_var (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;
 double numericvar_to_double_no_overflow (TYPE_1__*) ;
 int round_var (TYPE_1__*,int) ;
 int set_var_from_var (TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static void
exp_var(const NumericVar *arg, NumericVar *result, int rscale)
{
 NumericVar x;
 NumericVar elem;
 NumericVar ni;
 double val;
 int dweight;
 int ndiv2;
 int sig_digits;
 int local_rscale;

 init_var(&x);
 init_var(&elem);
 init_var(&ni);

 set_var_from_var(arg, &x);





 val = numericvar_to_double_no_overflow(&x);



 if (Abs(val) >= NUMERIC_MAX_RESULT_SCALE * 3)
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("value overflows numeric format")));


 dweight = (int) (val * 0.434294481903252);





 if (Abs(val) > 0.01)
 {
  NumericVar tmp;

  init_var(&tmp);
  set_var_from_var(&const_two, &tmp);

  ndiv2 = 1;
  val /= 2;

  while (Abs(val) > 0.01)
  {
   ndiv2++;
   val /= 2;
   add_var(&tmp, &tmp, &tmp);
  }

  local_rscale = x.dscale + ndiv2;
  div_var_fast(&x, &tmp, &x, local_rscale, 1);

  free_var(&tmp);
 }
 else
  ndiv2 = 0;
 sig_digits = 1 + dweight + rscale + (int) (ndiv2 * 0.301029995663981);
 sig_digits = Max(sig_digits, 0) + 8;

 local_rscale = sig_digits - 1;
 add_var(&const_one, &x, result);

 mul_var(&x, &x, &elem, local_rscale);
 set_var_from_var(&const_two, &ni);
 div_var_fast(&elem, &ni, &elem, local_rscale, 1);

 while (elem.ndigits != 0)
 {
  add_var(result, &elem, result);

  mul_var(&elem, &x, &elem, local_rscale);
  add_var(&ni, &const_one, &ni);
  div_var_fast(&elem, &ni, &elem, local_rscale, 1);
 }






 while (ndiv2-- > 0)
 {
  local_rscale = sig_digits - result->weight * 2 * DEC_DIGITS;
  local_rscale = Max(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
  mul_var(result, result, result, local_rscale);
 }


 round_var(result, rscale);

 free_var(&x);
 free_var(&elem);
 free_var(&ni);
}
