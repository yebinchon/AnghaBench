
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {int numerator; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (int ) ;
 struct mrb_rational* rational_ptr (int *,int ) ;

__attribute__((used)) static mrb_value
rational_numerator(mrb_state *mrb, mrb_value self)
{
  struct mrb_rational *p = rational_ptr(mrb, self);
  return mrb_fixnum_value(p->numerator);
}
