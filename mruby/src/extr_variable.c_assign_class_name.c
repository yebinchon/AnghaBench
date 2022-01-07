
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RObject {int tt; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_7__ {struct RClass* object_class; } ;
typedef TYPE_1__ mrb_state ;


 scalar_t__ ISUPPER (int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_iv_get (TYPE_1__*,struct RObject*,int ) ;
 int mrb_obj_iv_set_force (TYPE_1__*,struct RObject*,int ,int ) ;
 struct RObject* mrb_obj_ptr (int ) ;
 int mrb_obj_value (struct RObject*) ;
 int * mrb_sym_name_len (TYPE_1__*,int ,int *) ;
 int mrb_symbol_value (int ) ;
 int mrb_type (int ) ;
 scalar_t__ namespace_p (int ) ;

__attribute__((used)) static inline void
assign_class_name(mrb_state *mrb, struct RObject *obj, mrb_sym sym, mrb_value v)
{
  if (namespace_p(obj->tt) && namespace_p(mrb_type(v))) {
    struct RObject *c = mrb_obj_ptr(v);
    if (obj != c && ISUPPER(mrb_sym_name_len(mrb, sym, ((void*)0))[0])) {
      mrb_sym id_classname = mrb_intern_lit(mrb, "__classname__");
      mrb_value o = mrb_obj_iv_get(mrb, c, id_classname);

      if (mrb_nil_p(o)) {
        mrb_sym id_outer = mrb_intern_lit(mrb, "__outer__");
        o = mrb_obj_iv_get(mrb, c, id_outer);

        if (mrb_nil_p(o)) {
          if ((struct RClass *)obj == mrb->object_class) {
            mrb_obj_iv_set_force(mrb, c, id_classname, mrb_symbol_value(sym));
          }
          else {
            mrb_obj_iv_set_force(mrb, c, id_outer, mrb_obj_value(obj));
          }
        }
      }
    }
  }
}
