
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {int denominator; int numerator; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_exc_get (int *,char*) ;
 int mrb_fixnum_value (int) ;
 int mrb_raise (int *,int ,char*) ;
 struct mrb_rational* rational_ptr (int *,int ) ;

__attribute__((used)) static mrb_value
rational_to_i(mrb_state *mrb, mrb_value self)
{
  struct mrb_rational *p = rational_ptr(mrb, self);
  if (p->denominator == 0) {
    mrb_raise(mrb, mrb_exc_get(mrb, "StandardError"), "divided by 0");
  }
  return mrb_fixnum_value(p->numerator / p->denominator);
}
