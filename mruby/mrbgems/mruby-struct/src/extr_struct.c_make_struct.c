
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_NONE () ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_ARRAY ;
 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int make_struct_define_accessors (int *,int ,struct RClass*) ;
 struct RClass* mrb_class_new (int *,struct RClass*) ;
 scalar_t__ mrb_const_defined_at (int *,int ,int ) ;
 int mrb_const_name_p (int *,int ,int ) ;
 int mrb_const_remove (int *,int ,int ) ;
 int mrb_define_class_method (int *,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_class_under (int *,struct RClass*,int ,struct RClass*) ;
 int mrb_instance_new ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_set (int *,int ,int ,int ) ;
 int mrb_name_error (int *,int ,char*,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_to_sym (int *,int ) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_struct_s_members_m ;
 int mrb_to_str (int *,int ) ;
 int mrb_warn (int *,char*,int ) ;

__attribute__((used)) static mrb_value
make_struct(mrb_state *mrb, mrb_value name, mrb_value members, struct RClass *klass)
{
  mrb_value nstr;
  mrb_sym id;
  struct RClass *c;

  if (mrb_nil_p(name)) {
    c = mrb_class_new(mrb, klass);
  }
  else {

    mrb_to_str(mrb, name);
    id = mrb_obj_to_sym(mrb, name);
    if (!mrb_const_name_p(mrb, RSTRING_PTR(name), RSTRING_LEN(name))) {
      mrb_name_error(mrb, id, "identifier %v needs to be constant", name);
    }
    if (mrb_const_defined_at(mrb, mrb_obj_value(klass), id)) {
      mrb_warn(mrb, "redefining constant Struct::%v", name);
      mrb_const_remove(mrb, mrb_obj_value(klass), id);
    }
    c = mrb_define_class_under(mrb, klass, RSTRING_PTR(name), klass);
  }
  MRB_SET_INSTANCE_TT(c, MRB_TT_ARRAY);
  nstr = mrb_obj_value(c);
  mrb_iv_set(mrb, nstr, mrb_intern_lit(mrb, "__members__"), members);

  mrb_define_class_method(mrb, c, "new", mrb_instance_new, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, c, "[]", mrb_instance_new, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, c, "members", mrb_struct_s_members_m, MRB_ARGS_NONE());

  make_struct_define_accessors(mrb, members, c);
  return nstr;
}
