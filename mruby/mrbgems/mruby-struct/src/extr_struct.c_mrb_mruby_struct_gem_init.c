
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_6__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_ARRAY ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_struct_aref ;
 int mrb_struct_aset ;
 int mrb_struct_eql ;
 int mrb_struct_equal ;
 int mrb_struct_init_copy ;
 int mrb_struct_initialize ;
 int mrb_struct_len ;
 int mrb_struct_members ;
 int mrb_struct_s_def ;
 int mrb_struct_to_a ;
 int mrb_struct_to_h ;
 int mrb_struct_values_at ;

void
mrb_mruby_struct_gem_init(mrb_state* mrb)
{
  struct RClass *st;
  st = mrb_define_class(mrb, "Struct", mrb->object_class);
  MRB_SET_INSTANCE_TT(st, MRB_TT_ARRAY);

  mrb_define_class_method(mrb, st, "new", mrb_struct_s_def, MRB_ARGS_ANY());

  mrb_define_method(mrb, st, "==", mrb_struct_equal, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, st, "[]", mrb_struct_aref, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, st, "[]=", mrb_struct_aset, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, st, "members", mrb_struct_members, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "initialize", mrb_struct_initialize, MRB_ARGS_ANY());
  mrb_define_method(mrb, st, "initialize_copy", mrb_struct_init_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, st, "eql?", mrb_struct_eql, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, st, "size", mrb_struct_len, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "length", mrb_struct_len, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "to_a", mrb_struct_to_a, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "values", mrb_struct_to_a, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "to_h", mrb_struct_to_h, MRB_ARGS_NONE());
  mrb_define_method(mrb, st, "values_at", mrb_struct_values_at, MRB_ARGS_ANY());
}
