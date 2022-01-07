
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* kernel_module; struct RClass* nil_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_BLOCK () ;
 int MRB_ARGS_NONE () ;
 struct RClass* mrb_class_get (TYPE_1__*,char*) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_f_itself ;
 int mrb_obj_instance_exec ;
 int nil_to_a ;
 int nil_to_f ;
 int nil_to_h ;
 int nil_to_i ;

void
mrb_mruby_object_ext_gem_init(mrb_state* mrb)
{
  struct RClass * n = mrb->nil_class;

  mrb_define_method(mrb, n, "to_a", nil_to_a, MRB_ARGS_NONE());

  mrb_define_method(mrb, n, "to_f", nil_to_f, MRB_ARGS_NONE());

  mrb_define_method(mrb, n, "to_h", nil_to_h, MRB_ARGS_NONE());
  mrb_define_method(mrb, n, "to_i", nil_to_i, MRB_ARGS_NONE());

  mrb_define_method(mrb, mrb->kernel_module, "itself", mrb_f_itself, MRB_ARGS_NONE());

  mrb_define_method(mrb, mrb_class_get(mrb, "BasicObject"), "instance_exec", mrb_obj_instance_exec, MRB_ARGS_ANY() | MRB_ARGS_BLOCK());
}
