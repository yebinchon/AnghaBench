
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int MRB_TT_CLASS ;
 int mrb_check_type (int *,int ,int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_obj_value (struct RClass*) ;

__attribute__((used)) static struct RClass*
class_from_sym(mrb_state *mrb, struct RClass *klass, mrb_sym id)
{
  mrb_value c = mrb_const_get(mrb, mrb_obj_value(klass), id);

  mrb_check_type(mrb, c, MRB_TT_CLASS);
  return mrb_class_ptr(c);
}
