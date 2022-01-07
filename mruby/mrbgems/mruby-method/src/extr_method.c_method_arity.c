
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_fixnum_value (int) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_proc_arity (int ) ;
 int mrb_proc_ptr (int ) ;

__attribute__((used)) static mrb_value
method_arity(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_proc"));
  mrb_int arity = mrb_nil_p(proc) ? -1 : mrb_proc_arity(mrb_proc_ptr(proc));
  return mrb_fixnum_value(arity);
}
