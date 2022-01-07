
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 scalar_t__ mrb_class_ptr (int ) ;
 int mrb_module_p (int ) ;
 scalar_t__ mrb_obj_class (int *,int ) ;
 int mrb_obj_is_kind_of (int *,int ,scalar_t__) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 scalar_t__ mrb_sclass_p (int ) ;

__attribute__((used)) static void
bind_check(mrb_state *mrb, mrb_value recv, mrb_value owner)
{
  if (!mrb_module_p(owner) &&
      mrb_class_ptr(owner) != mrb_obj_class(mrb, recv) &&
      !mrb_obj_is_kind_of(mrb, recv, mrb_class_ptr(owner))) {
    if (mrb_sclass_p(owner)) {
      mrb_raise(mrb, E_TYPE_ERROR, "singleton method called for a different object");
    } else {
      mrb_raisef(mrb, E_TYPE_ERROR, "bind argument must be an instance of %v", owner);
    }
  }
}
