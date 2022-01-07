
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {scalar_t__ denominator; scalar_t__ numerator; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_float ;


 int mrb_float_value (int *,int) ;
 struct mrb_rational* rational_ptr (int *,int ) ;

__attribute__((used)) static mrb_value
rational_to_f(mrb_state *mrb, mrb_value self)
{
  struct mrb_rational *p = rational_ptr(mrb, self);
  mrb_float f = (mrb_float)p->numerator / (mrb_float)p->denominator;

  return mrb_float_value(mrb, f);
}
