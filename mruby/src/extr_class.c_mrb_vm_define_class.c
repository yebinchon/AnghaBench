
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int super; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int check_if_class_or_module (int *,int ) ;
 struct RClass* define_class (int *,int ,struct RClass*,struct RClass*) ;
 int mrb_class_inherited (int *,struct RClass*,struct RClass*) ;
 int mrb_class_p (int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 struct RClass* mrb_class_real (int ) ;
 scalar_t__ mrb_const_defined_at (int *,int ,int ) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;

struct RClass*
mrb_vm_define_class(mrb_state *mrb, mrb_value outer, mrb_value super, mrb_sym id)
{
  struct RClass *s;
  struct RClass *c;

  if (!mrb_nil_p(super)) {
    if (!mrb_class_p(super)) {
      mrb_raisef(mrb, E_TYPE_ERROR, "superclass must be a Class (%!v given)", super);
    }
    s = mrb_class_ptr(super);
  }
  else {
    s = 0;
  }
  check_if_class_or_module(mrb, outer);
  if (mrb_const_defined_at(mrb, outer, id)) {
    mrb_value old = mrb_const_get(mrb, outer, id);

    if (!mrb_class_p(old)) {
      mrb_raisef(mrb, E_TYPE_ERROR, "%!v is not a class", old);
    }
    c = mrb_class_ptr(old);
    if (s) {

      if (mrb_class_real(c->super) != s) {
        mrb_raisef(mrb, E_TYPE_ERROR, "superclass mismatch for class %v", old);
      }
    }
    return c;
  }
  c = define_class(mrb, id, s, mrb_class_ptr(outer));
  mrb_class_inherited(mrb, mrb_class_real(c->super), c);

  return c;
}
