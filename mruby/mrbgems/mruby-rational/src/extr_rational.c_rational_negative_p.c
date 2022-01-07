
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {scalar_t__ numerator; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_false_value () ;
 int mrb_true_value () ;
 struct mrb_rational* rational_ptr (int *,int ) ;

__attribute__((used)) static mrb_value
rational_negative_p(mrb_state *mrb, mrb_value self)
{
  struct mrb_rational *p = rational_ptr(mrb, self);
  if (p->numerator < 0) {
    return mrb_true_value();
  }
  return mrb_false_value();
}
