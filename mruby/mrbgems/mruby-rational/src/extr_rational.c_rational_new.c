
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_rational {void* denominator; void* numerator; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef void* mrb_int ;


 int MRB_SET_FROZEN_FLAG (struct RBasic*) ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_obj_value (struct RBasic*) ;
 struct RBasic* rational_alloc (int *,struct RClass*,struct mrb_rational**) ;

__attribute__((used)) static mrb_value
rational_new(mrb_state *mrb, mrb_int numerator, mrb_int denominator)
{
  struct RClass *c = mrb_class_get(mrb, "Rational");
  struct mrb_rational *p;
  struct RBasic *rat = rational_alloc(mrb, c, &p);
  p->numerator = numerator;
  p->denominator = denominator;
  MRB_SET_FROZEN_FLAG(rat);
  return mrb_obj_value(rat);
}
