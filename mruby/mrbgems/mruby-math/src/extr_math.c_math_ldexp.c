
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int mrb_float ;


 int ldexp (int ,int) ;
 int mrb_float_value (int *,int ) ;
 int mrb_get_args (int *,char*,int *,scalar_t__*) ;

__attribute__((used)) static mrb_value
math_ldexp(mrb_state *mrb, mrb_value obj)
{
  mrb_float x;
  mrb_int i;

  mrb_get_args(mrb, "fi", &x, &i);
  x = ldexp(x, (int)i);

  return mrb_float_value(mrb, x);
}
