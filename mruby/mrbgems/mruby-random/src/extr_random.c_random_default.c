
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_is_kind_of (int *,int ,struct RClass*) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
random_default(mrb_state *mrb) {
  struct RClass *c = mrb_class_get(mrb, "Random");
  mrb_value d = mrb_const_get(mrb, mrb_obj_value(c), mrb_intern_lit(mrb, "DEFAULT"));
  if (!mrb_obj_is_kind_of(mrb, d, c)) {
    mrb_raise(mrb, E_TYPE_ERROR, "Random::DEFAULT replaced");
  }
  return d;
}
