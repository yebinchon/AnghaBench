
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* kernel_module; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_REQ (int) ;
 int MRB_ARGS_REST () ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_f_sprintf ;

void
mrb_mruby_sprintf_gem_init(mrb_state* mrb)
{
  struct RClass *krn;

  if (mrb->kernel_module == ((void*)0)) {
    mrb->kernel_module = mrb_define_module(mrb, "Kernel");
  }
  krn = mrb->kernel_module;

  mrb_define_method(mrb, krn, "sprintf", mrb_f_sprintf, MRB_ARGS_REQ(1)|MRB_ARGS_REST());
  mrb_define_method(mrb, krn, "format", mrb_f_sprintf, MRB_ARGS_REQ(1)|MRB_ARGS_REST());
}
