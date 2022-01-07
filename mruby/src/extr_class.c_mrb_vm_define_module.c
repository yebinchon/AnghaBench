
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int check_if_class_or_module (int *,int ) ;
 struct RClass* define_module (int *,int ,struct RClass*) ;
 struct RClass* mrb_class_ptr (int ) ;
 scalar_t__ mrb_const_defined_at (int *,int ,int ) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_module_p (int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;

struct RClass*
mrb_vm_define_module(mrb_state *mrb, mrb_value outer, mrb_sym id)
{
  check_if_class_or_module(mrb, outer);
  if (mrb_const_defined_at(mrb, outer, id)) {
    mrb_value old = mrb_const_get(mrb, outer, id);

    if (!mrb_module_p(old)) {
      mrb_raisef(mrb, E_TYPE_ERROR, "%!v is not a module", old);
    }
    return mrb_class_ptr(old);
  }
  return define_module(mrb, id, mrb_class_ptr(outer));
}
