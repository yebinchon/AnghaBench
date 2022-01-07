
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int mrb_array_p (int ) ;
 int mrb_intern_lit (int *,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_raise (int *,int ,char*) ;
 int struct_ivar_get (int *,int ,int ) ;

__attribute__((used)) static mrb_value
struct_s_members(mrb_state *mrb, struct RClass *klass)
{
  mrb_value members = struct_ivar_get(mrb, mrb_obj_value(klass), mrb_intern_lit(mrb, "__members__"));

  if (mrb_nil_p(members)) {
    mrb_raise(mrb, E_TYPE_ERROR, "uninitialized struct");
  }
  if (!mrb_array_p(members)) {
    mrb_raise(mrb, E_TYPE_ERROR, "corrupted struct");
  }
  return members;
}
