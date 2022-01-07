
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int class_ptr_p (int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;

__attribute__((used)) static void
check_if_class_or_module(mrb_state *mrb, mrb_value obj)
{
  if (!class_ptr_p(obj)) {
    mrb_raisef(mrb, E_TYPE_ERROR, "%!v is not a class/module", obj);
  }
}
