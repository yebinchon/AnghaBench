
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int MRB_PROC_STRICT_P (struct RProc*) ;
 int mrb_bool_value (int ) ;
 struct RProc* mrb_proc_ptr (int ) ;

__attribute__((used)) static mrb_value
mrb_proc_lambda(mrb_state *mrb, mrb_value self)
{
  struct RProc *p = mrb_proc_ptr(self);
  return mrb_bool_value(MRB_PROC_STRICT_P(p));
}
