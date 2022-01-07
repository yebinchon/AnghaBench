
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_ary_set (int *,int ,size_t,int ) ;
 int mrb_nil_value () ;
 struct RClass* mrb_obj_class (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 size_t num_members (int *,struct RClass*) ;

__attribute__((used)) static mrb_value
mrb_struct_initialize_withArg(mrb_state *mrb, mrb_int argc, mrb_value *argv, mrb_value self)
{
  struct RClass *klass = mrb_obj_class(mrb, self);
  mrb_int i, n;

  n = num_members(mrb, klass);
  if (n < argc) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "struct size differs");
  }

  for (i = 0; i < argc; i++) {
    mrb_ary_set(mrb, self, i, argv[i]);
  }
  for (i = argc; i < n; i++) {
    mrb_ary_set(mrb, self, i, mrb_nil_value());
  }
  return self;
}
