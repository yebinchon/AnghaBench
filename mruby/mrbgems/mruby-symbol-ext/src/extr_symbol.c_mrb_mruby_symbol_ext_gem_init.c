
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* symbol_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_sym_all_symbols ;
 int mrb_sym_length ;

void
mrb_mruby_symbol_ext_gem_init(mrb_state* mrb)
{
  struct RClass *s = mrb->symbol_class;



  mrb_define_method(mrb, s, "length", mrb_sym_length, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "size", mrb_sym_length, MRB_ARGS_NONE());
}
