
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_21__ {scalar_t__ ndigits; scalar_t__ weight; int dscale; } ;
typedef TYPE_1__ NumericVar ;


 double Abs (double) ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int Max (int,int) ;
 int Min (int,int ) ;
 int NUMERIC_MAX_DISPLAY_SCALE ;
 double NUMERIC_MAX_RESULT_SCALE ;
 int NUMERIC_MIN_DISPLAY_SCALE ;
 int NUMERIC_MIN_SIG_DIGITS ;
 scalar_t__ cmp_var (TYPE_1__ const*,int *) ;
 int const_zero ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int estimate_ln_dweight (TYPE_1__ const*) ;
 int exp_var (TYPE_1__*,TYPE_1__*,int) ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int ln_var (TYPE_1__ const*,TYPE_1__*,int) ;
 int mul_var (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ;
 double numericvar_to_double_no_overflow (TYPE_1__*) ;
 scalar_t__ numericvar_to_int64 (TYPE_1__ const*,scalar_t__*) ;
 int power_var_int (TYPE_1__ const*,int,TYPE_1__*,int) ;
 int set_var_from_var (int *,TYPE_1__*) ;

__attribute__((used)) static void
power_var(const NumericVar *base, const NumericVar *exp, NumericVar *result)
{
 NumericVar ln_base;
 NumericVar ln_num;
 int ln_dweight;
 int rscale;
 int local_rscale;
 double val;


 if (exp->ndigits == 0 || exp->ndigits <= exp->weight + 1)
 {

  int64 expval64;

  if (numericvar_to_int64(exp, &expval64))
  {
   int expval = (int) expval64;


   if ((int64) expval == expval64)
   {

    rscale = NUMERIC_MIN_SIG_DIGITS;
    rscale = Max(rscale, base->dscale);
    rscale = Max(rscale, NUMERIC_MIN_DISPLAY_SCALE);
    rscale = Min(rscale, NUMERIC_MAX_DISPLAY_SCALE);

    power_var_int(base, expval, result, rscale);
    return;
   }
  }
 }





 if (cmp_var(base, &const_zero) == 0)
 {
  set_var_from_var(&const_zero, result);
  result->dscale = NUMERIC_MIN_SIG_DIGITS;
  return;
 }

 init_var(&ln_base);
 init_var(&ln_num);
 ln_dweight = estimate_ln_dweight(base);

 local_rscale = 8 - ln_dweight;
 local_rscale = Max(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
 local_rscale = Min(local_rscale, NUMERIC_MAX_DISPLAY_SCALE);

 ln_var(base, &ln_base, local_rscale);

 mul_var(&ln_base, exp, &ln_num, local_rscale);

 val = numericvar_to_double_no_overflow(&ln_num);


 if (Abs(val) > NUMERIC_MAX_RESULT_SCALE * 3.01)
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("value overflows numeric format")));

 val *= 0.434294481903252;


 rscale = NUMERIC_MIN_SIG_DIGITS - (int) val;
 rscale = Max(rscale, base->dscale);
 rscale = Max(rscale, exp->dscale);
 rscale = Max(rscale, NUMERIC_MIN_DISPLAY_SCALE);
 rscale = Min(rscale, NUMERIC_MAX_DISPLAY_SCALE);


 local_rscale = rscale + (int) val - ln_dweight + 8;
 local_rscale = Max(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);



 ln_var(base, &ln_base, local_rscale);

 mul_var(&ln_base, exp, &ln_num, local_rscale);

 exp_var(&ln_num, result, rscale);

 free_var(&ln_num);
 free_var(&ln_base);
}
