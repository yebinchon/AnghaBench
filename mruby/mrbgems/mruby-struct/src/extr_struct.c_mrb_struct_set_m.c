
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 size_t RSTRUCT_LEN (int ) ;
 int * RSTRUCT_PTR (int ) ;
 int mrb_ary_set (int *,int ,size_t,int ) ;
 size_t mrb_fixnum (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_proc_cfunc_env_get (int *,int ) ;
 int mrb_struct_modify (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_set_m(mrb_state *mrb, mrb_value obj)
{
  mrb_int i = mrb_fixnum(mrb_proc_cfunc_env_get(mrb, 0));
  mrb_value *ptr;
  mrb_value val;

  mrb_get_args(mrb, "o", &val);
  mrb_struct_modify(mrb, obj);
  ptr = RSTRUCT_PTR(obj);
  if (ptr == ((void*)0) || i >= RSTRUCT_LEN(obj)) {
    mrb_ary_set(mrb, obj, i, val);
  }
  else {
    ptr[i] = val;
  }
  return val;
}
