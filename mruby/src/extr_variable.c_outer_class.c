
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;




 struct RClass* mrb_class_ptr (int ) ;
 int mrb_intern_lit (int *,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_iv_get (int *,struct RObject*,int ) ;
 int mrb_type (int ) ;

__attribute__((used)) static struct RClass*
outer_class(mrb_state *mrb, struct RClass *c)
{
  mrb_value ov;

  ov = mrb_obj_iv_get(mrb, (struct RObject*)c, mrb_intern_lit(mrb, "__outer__"));
  if (mrb_nil_p(ov)) return ((void*)0);
  switch (mrb_type(ov)) {
  case 129:
  case 128:
    return mrb_class_ptr(ov);
  default:
    break;
  }
  return ((void*)0);
}
