
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {struct RClass* super; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 struct RClass* mrb_class_ptr (int ) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_value (struct RClass*) ;
 struct RClass* struct_class (int *) ;

__attribute__((used)) static inline mrb_value
struct_ivar_get(mrb_state *mrb, mrb_value cls, mrb_sym id)
{
  struct RClass* c = mrb_class_ptr(cls);
  struct RClass* sclass = struct_class(mrb);
  mrb_value ans;

  for (;;) {
    ans = mrb_iv_get(mrb, mrb_obj_value(c), id);
    if (!mrb_nil_p(ans)) return ans;
    c = c->super;
    if (c == sclass || c == 0)
      return mrb_nil_value();
  }
}
