
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_check_frozen (int *,int ) ;
 int mrb_get_args (int *,char*,int **,int *) ;
 int mrb_obj_ptr (int ) ;
 int mrb_obj_to_sym (int *,int ) ;
 int remove_method (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_mod_remove_method(mrb_state *mrb, mrb_value mod)
{
  mrb_int argc;
  mrb_value *argv;

  mrb_get_args(mrb, "*", &argv, &argc);
  mrb_check_frozen(mrb, mrb_obj_ptr(mod));
  while (argc--) {
    remove_method(mrb, mod, mrb_obj_to_sym(mrb, *argv));
    argv++;
  }
  return mod;
}
