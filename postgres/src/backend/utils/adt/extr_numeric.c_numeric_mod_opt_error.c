
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ndigits; scalar_t__* digits; } ;
typedef TYPE_1__ NumericVar ;
typedef int * Numeric ;


 scalar_t__ NUMERIC_IS_NAN (int *) ;
 int const_nan ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int init_var_from_num (int *,TYPE_1__*) ;
 int * make_result (int *) ;
 int * make_result_opt_error (TYPE_1__*,int *) ;
 int mod_var (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

Numeric
numeric_mod_opt_error(Numeric num1, Numeric num2, bool *have_error)
{
 Numeric res;
 NumericVar arg1;
 NumericVar arg2;
 NumericVar result;

 if (have_error)
  *have_error = 0;

 if (NUMERIC_IS_NAN(num1) || NUMERIC_IS_NAN(num2))
  return make_result(&const_nan);

 init_var_from_num(num1, &arg1);
 init_var_from_num(num2, &arg2);

 init_var(&result);




 if (have_error && (arg2.ndigits == 0 || arg2.digits[0] == 0))
 {
  *have_error = 1;
  return ((void*)0);
 }

 mod_var(&arg1, &arg2, &result);

 res = make_result_opt_error(&result, ((void*)0));

 free_var(&result);

 return res;
}
