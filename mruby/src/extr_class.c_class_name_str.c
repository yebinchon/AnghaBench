
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {scalar_t__ tt; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ MRB_TT_MODULE ;
 int mrb_class_path (int *,struct RClass*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_ptr_to_str (int *,struct RClass*) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_cat_str (int *,int ,int ) ;
 int mrb_str_new_lit (int *,char*) ;

__attribute__((used)) static mrb_value
class_name_str(mrb_state *mrb, struct RClass* c)
{
  mrb_value path = mrb_class_path(mrb, c);
  if (mrb_nil_p(path)) {
    path = c->tt == MRB_TT_MODULE ? mrb_str_new_lit(mrb, "#<Module:") :
                                    mrb_str_new_lit(mrb, "#<Class:");
    mrb_str_cat_str(mrb, path, mrb_ptr_to_str(mrb, c));
    mrb_str_cat_lit(mrb, path, ">");
  }
  return path;
}
