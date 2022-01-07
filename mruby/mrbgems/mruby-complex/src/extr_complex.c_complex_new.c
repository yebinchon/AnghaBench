
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_complex {void* imaginary; void* real; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef void* mrb_float ;


 int MRB_SET_FROZEN_FLAG (struct RBasic*) ;
 struct RBasic* complex_alloc (int *,struct RClass*,struct mrb_complex**) ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_obj_value (struct RBasic*) ;

__attribute__((used)) static mrb_value
complex_new(mrb_state *mrb, mrb_float real, mrb_float imaginary)
{
  struct RClass *c = mrb_class_get(mrb, "Complex");
  struct mrb_complex *p;
  struct RBasic *comp = complex_alloc(mrb, c, &p);
  p->real = real;
  p->imaginary = imaginary;
  MRB_SET_FROZEN_FLAG(comp);

  return mrb_obj_value(comp);
}
