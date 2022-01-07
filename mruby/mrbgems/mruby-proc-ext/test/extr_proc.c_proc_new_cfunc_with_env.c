
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_method_t ;


 int MRB_METHOD_FROM_PROC (int ,struct RProc*) ;
 int mrb_class_ptr (int ) ;
 int mrb_define_method_raw (int *,int ,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 struct RProc* mrb_proc_new_cfunc_with_env (int *,int ,int,int *) ;
 int mrb_symbol_value (int ) ;
 int return_func_name ;

__attribute__((used)) static mrb_value
proc_new_cfunc_with_env(mrb_state *mrb, mrb_value self)
{
  mrb_sym n;
  mrb_value n_val;
  mrb_method_t m;
  struct RProc *p;
  mrb_get_args(mrb, "n", &n);
  n_val = mrb_symbol_value(n);
  p = mrb_proc_new_cfunc_with_env(mrb, return_func_name, 1, &n_val);
  MRB_METHOD_FROM_PROC(m, p);
  mrb_define_method_raw(mrb, mrb_class_ptr(self), n, m);
  return self;
}
