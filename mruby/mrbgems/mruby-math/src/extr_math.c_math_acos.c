
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef double mrb_float ;


 double acos (double) ;
 int domain_error (int *,char*) ;
 int mrb_float_value (int *,double) ;
 int mrb_get_args (int *,char*,double*) ;

__attribute__((used)) static mrb_value
math_acos(mrb_state *mrb, mrb_value obj)
{
  mrb_float x;

  mrb_get_args(mrb, "f", &x);
  if (x < -1.0 || x > 1.0) {
    domain_error(mrb, "acos");
  }
  x = acos(x);

  return mrb_float_value(mrb, x);
}
