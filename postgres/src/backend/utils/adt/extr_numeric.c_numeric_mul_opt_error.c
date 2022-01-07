
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dscale; } ;
typedef TYPE_1__ NumericVar ;
typedef int Numeric ;


 scalar_t__ NUMERIC_IS_NAN (int ) ;
 int const_nan ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int init_var_from_num (int ,TYPE_1__*) ;
 int make_result (int *) ;
 int make_result_opt_error (TYPE_1__*,int*) ;
 int mul_var (TYPE_1__*,TYPE_1__*,TYPE_1__*,scalar_t__) ;

Numeric
numeric_mul_opt_error(Numeric num1, Numeric num2, bool *have_error)
{
 NumericVar arg1;
 NumericVar arg2;
 NumericVar result;
 Numeric res;




 if (NUMERIC_IS_NAN(num1) || NUMERIC_IS_NAN(num2))
  return make_result(&const_nan);
 init_var_from_num(num1, &arg1);
 init_var_from_num(num2, &arg2);

 init_var(&result);
 mul_var(&arg1, &arg2, &result, arg1.dscale + arg2.dscale);

 res = make_result_opt_error(&result, have_error);

 free_var(&result);

 return res;
}
