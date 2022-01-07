
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef double mrb_float ;


 int domain_error (int *,char*) ;
 double log (double) ;
 int mrb_float_value (int *,double) ;
 int mrb_get_args (int *,char*,double*,double*) ;

__attribute__((used)) static mrb_value
math_log(mrb_state *mrb, mrb_value obj)
{
  mrb_float x, base;
  mrb_int argc;

  argc = mrb_get_args(mrb, "f|f", &x, &base);
  if (x < 0.0) {
    domain_error(mrb, "log");
  }
  x = log(x);
  if (argc == 2) {
    if (base < 0.0) {
      domain_error(mrb, "log");
    }
    x /= log(base);
  }
  return mrb_float_value(mrb, x);
}
