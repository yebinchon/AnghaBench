
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;
 struct RClass* outer_class (int *,struct RClass*) ;

__attribute__((used)) static mrb_bool
detect_outer_loop(mrb_state *mrb, struct RClass *c)
{
  struct RClass *t = c;
  struct RClass *h = c;

  for (;;) {
    if (h == ((void*)0)) return FALSE;
    h = outer_class(mrb, h);
    if (h == ((void*)0)) return FALSE;
    h = outer_class(mrb, h);
    t = outer_class(mrb, t);
    if (t == h) return TRUE;
  }
}
