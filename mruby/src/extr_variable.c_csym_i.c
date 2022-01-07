
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csym_arg {int sym; struct RClass* c; } ;
struct RClass {scalar_t__ tt; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 struct RClass* mrb_class_ptr (int ) ;
 scalar_t__ mrb_type (int ) ;

__attribute__((used)) static int
csym_i(mrb_state *mrb, mrb_sym sym, mrb_value v, void *p)
{
  struct csym_arg *a = (struct csym_arg*)p;
  struct RClass *c = a->c;

  if (mrb_type(v) == c->tt && mrb_class_ptr(v) == c) {
    a->sym = sym;
    return 1;
  }
  return 0;
}
