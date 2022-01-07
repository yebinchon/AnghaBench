
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int MRB_PROC_CFUNC_P (struct RProc*) ;
 struct RProc* create_proc_from_string (int *,char*,int,int ,char*,int) ;
 int exec_irep (int *,int ,struct RProc*) ;
 int mrb_assert (int) ;
 int mrb_get_args (int *,char*,char**,int*,int *,char**,int*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
f_eval(mrb_state *mrb, mrb_value self)
{
  char *s;
  mrb_int len;
  mrb_value binding = mrb_nil_value();
  char *file = ((void*)0);
  mrb_int line = 1;
  struct RProc *proc;

  mrb_get_args(mrb, "s|ozi", &s, &len, &binding, &file, &line);

  proc = create_proc_from_string(mrb, s, len, binding, file, line);
  mrb_assert(!MRB_PROC_CFUNC_P(proc));
  return exec_irep(mrb, self, proc);
}
