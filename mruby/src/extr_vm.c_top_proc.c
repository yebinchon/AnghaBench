
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {struct RProc* upper; } ;
typedef int mrb_state ;


 scalar_t__ MRB_PROC_SCOPE_P (struct RProc*) ;
 scalar_t__ MRB_PROC_STRICT_P (struct RProc*) ;

__attribute__((used)) static inline struct RProc*
top_proc(mrb_state *mrb, struct RProc *proc)
{
  while (proc->upper) {
    if (MRB_PROC_SCOPE_P(proc) || MRB_PROC_STRICT_P(proc))
      return proc;
    proc = proc->upper;
  }
  return proc;
}
