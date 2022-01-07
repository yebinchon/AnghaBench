
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int * RSTRUCT_PTR (int ) ;
 size_t mrb_fixnum (int ) ;
 int mrb_nil_value () ;
 int mrb_proc_cfunc_env_get (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_ref(mrb_state *mrb, mrb_value obj)
{
  mrb_int i = mrb_fixnum(mrb_proc_cfunc_env_get(mrb, 0));
  mrb_value *ptr = RSTRUCT_PTR(obj);

  if (!ptr) return mrb_nil_value();
  return ptr[i];
}
