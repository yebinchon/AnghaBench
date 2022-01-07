
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_complex {scalar_t__ imaginary; int real; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_RANGE_ERROR ;
 struct mrb_complex* complex_ptr (int *,int ) ;
 int mrb_float_value (int *,int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;

__attribute__((used)) static mrb_value
complex_to_f(mrb_state *mrb, mrb_value self)
{
  struct mrb_complex *p = complex_ptr(mrb, self);

  if (p->imaginary != 0) {
    mrb_raisef(mrb, E_RANGE_ERROR, "can't convert %v into Float", self);
  }

  return mrb_float_value(mrb, p->real);
}
