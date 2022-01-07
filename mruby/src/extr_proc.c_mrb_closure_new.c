
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int closure_setup (int *,struct RProc*) ;
 struct RProc* mrb_proc_new (int *,int *) ;

struct RProc*
mrb_closure_new(mrb_state *mrb, mrb_irep *irep)
{
  struct RProc *p = mrb_proc_new(mrb, irep);

  closure_setup(mrb, p);
  return p;
}
