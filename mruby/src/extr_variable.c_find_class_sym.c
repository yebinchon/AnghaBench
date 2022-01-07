
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csym_arg {scalar_t__ sym; struct RClass* c; } ;
struct RClass {int iv; } ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;


 int csym_i ;
 int iv_foreach (int *,int ,int ,struct csym_arg*) ;

__attribute__((used)) static mrb_sym
find_class_sym(mrb_state *mrb, struct RClass *outer, struct RClass *c)
{
  struct csym_arg arg;

  if (!outer) return 0;
  if (outer == c) return 0;
  arg.c = c;
  arg.sym = 0;
  iv_foreach(mrb, outer->iv, csym_i, &arg);
  return arg.sym;
}
