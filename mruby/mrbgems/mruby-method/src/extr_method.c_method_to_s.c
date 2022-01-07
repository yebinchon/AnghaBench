
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_class_name (int *,struct RClass*) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_obj_classname (int *,int ) ;
 int mrb_str_cat_cstr (int *,int ,int ) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_concat (int *,int ,int ) ;
 int mrb_str_new_lit (int *,char*) ;

__attribute__((used)) static mrb_value
method_to_s(mrb_state *mrb, mrb_value self)
{
  mrb_value owner = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_owner"));
  mrb_value klass = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_klass"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_name"));
  mrb_value str = mrb_str_new_lit(mrb, "#<");
  struct RClass *rklass;

  mrb_str_cat_cstr(mrb, str, mrb_obj_classname(mrb, self));
  mrb_str_cat_lit(mrb, str, ": ");
  rklass = mrb_class_ptr(klass);
  if (mrb_class_ptr(owner) == rklass) {
    mrb_str_concat(mrb, str, owner);
    mrb_str_cat_lit(mrb, str, "#");
    mrb_str_concat(mrb, str, name);
  }
  else {
    mrb_str_cat_cstr(mrb, str, mrb_class_name(mrb, rklass));
    mrb_str_cat_lit(mrb, str, "(");
    mrb_str_concat(mrb, str, owner);
    mrb_str_cat_lit(mrb, str, ")#");
    mrb_str_concat(mrb, str, name);
  }
  mrb_str_cat_lit(mrb, str, ">");
  return str;
}
