
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_istruct_p (int ) ;
 int mrb_obj_is_kind_of (int *,int ,struct RClass*) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static void
random_check(mrb_state *mrb, mrb_value random) {
  struct RClass *c = mrb_class_get(mrb, "Random");
  if (!mrb_obj_is_kind_of(mrb, random, c) || !mrb_istruct_p(random)) {
    mrb_raise(mrb, E_TYPE_ERROR, "Random instance required");
  }
}
