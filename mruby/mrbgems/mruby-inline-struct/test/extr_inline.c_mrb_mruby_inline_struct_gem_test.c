
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_6__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_ISTRUCT ;
 int istruct_test_initialize ;
 int istruct_test_length ;
 int istruct_test_mutate ;
 int istruct_test_test_receive ;
 int istruct_test_test_receive_direct ;
 int istruct_test_to_s ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;

void mrb_mruby_inline_struct_gem_test(mrb_state *mrb)
{
  struct RClass *cls;

  cls = mrb_define_class(mrb, "InlineStructTest", mrb->object_class);
  MRB_SET_INSTANCE_TT(cls, MRB_TT_ISTRUCT);
  mrb_define_method(mrb, cls, "initialize", istruct_test_initialize, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, cls, "to_s", istruct_test_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, cls, "mutate", istruct_test_mutate, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, cls, "length", istruct_test_length, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, cls, "test_receive", istruct_test_test_receive, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, cls, "test_receive_direct", istruct_test_test_receive_direct, MRB_ARGS_REQ(1));
}
