
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {scalar_t__ iv; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int assign_class_name (int *,struct RObject*,int ,int ) ;
 scalar_t__ iv_new (int *) ;
 int iv_put (int *,scalar_t__,int ,int ) ;
 int mrb_write_barrier (int *,struct RBasic*) ;

void
mrb_obj_iv_set_force(mrb_state *mrb, struct RObject *obj, mrb_sym sym, mrb_value v)
{
  assign_class_name(mrb, obj, sym, v);
  if (!obj->iv) {
    obj->iv = iv_new(mrb);
  }
  iv_put(mrb, obj->iv, sym, v);
  mrb_write_barrier(mrb, (struct RBasic*)obj);
}
