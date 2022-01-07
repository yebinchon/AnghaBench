
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int cfunc_env_get ;
 int cfunc_without_env ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_module_function (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int proc_new_cfunc_with_env ;

void mrb_mruby_proc_ext_gem_test(mrb_state *mrb)
{
  struct RClass *cls;

  cls = mrb_define_class(mrb, "ProcExtTest", mrb->object_class);
  mrb_define_module_function(mrb, cls, "mrb_proc_new_cfunc_with_env", proc_new_cfunc_with_env, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, cls, "mrb_cfunc_env_get", cfunc_env_get, MRB_ARGS_REQ(2));
  mrb_define_module_function(mrb, cls, "cfunc_without_env", cfunc_without_env, MRB_ARGS_NONE());
}
