
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_method_t ;


 int MRB_METHOD_FUNC (int ) ;
 struct RProc* MRB_METHOD_PROC (int ) ;
 scalar_t__ MRB_METHOD_PROC_P (int ) ;
 scalar_t__ MRB_METHOD_UNDEF_P (int ) ;
 int mrb_method_search_vm (int *,struct RClass**,int ) ;
 struct RProc* mrb_proc_new_cfunc (int *,int ) ;

__attribute__((used)) static struct RProc *
method_search_vm(mrb_state *mrb, struct RClass **cp, mrb_sym mid)
{
  mrb_method_t m = mrb_method_search_vm(mrb, cp, mid);
  if (MRB_METHOD_UNDEF_P(m))
    return ((void*)0);
  if (MRB_METHOD_PROC_P(m))
    return MRB_METHOD_PROC(m);
  return mrb_proc_new_cfunc(mrb, MRB_METHOD_FUNC(m));
}
