
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_complex {int real; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct mrb_complex* complex_ptr (int *,int ) ;
 int mrb_float_value (int *,int ) ;

__attribute__((used)) static mrb_value
complex_real(mrb_state *mrb, mrb_value self)
{
  struct mrb_complex *p = complex_ptr(mrb, self);
  return mrb_float_value(mrb, p->real);
}
