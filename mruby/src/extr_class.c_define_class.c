
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int super; } ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int MRB_CLASS_ORIGIN (struct RClass*) ;
 struct RClass* class_from_sym (int *,struct RClass*,int ) ;
 struct RClass* mrb_class_new (int *,struct RClass*) ;
 struct RClass* mrb_class_real (int ) ;
 scalar_t__ mrb_const_defined_at (int *,int ,int ) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_raisef (int *,int ,char*,int ,int ,struct RClass*) ;
 int setup_class (int *,struct RClass*,struct RClass*,int ) ;

__attribute__((used)) static struct RClass*
define_class(mrb_state *mrb, mrb_sym name, struct RClass *super, struct RClass *outer)
{
  struct RClass * c;

  if (mrb_const_defined_at(mrb, mrb_obj_value(outer), name)) {
    c = class_from_sym(mrb, outer, name);
    MRB_CLASS_ORIGIN(c);
    if (super && mrb_class_real(c->super) != super) {
      mrb_raisef(mrb, E_TYPE_ERROR, "superclass mismatch for Class %n (%C not %C)",
                 name, c->super, super);
    }
    return c;
  }

  c = mrb_class_new(mrb, super);
  setup_class(mrb, outer, c, name);

  return c;
}
