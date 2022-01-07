
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct RObject* method_object_alloc (int *,int ) ;
 int mrb_class_get (int *,char*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_obj_iv_set (int *,struct RObject*,int ,int ) ;
 int mrb_obj_value (struct RObject*) ;

__attribute__((used)) static mrb_value
method_unbind(mrb_state *mrb, mrb_value self)
{
  struct RObject *ume;
  mrb_value owner = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_owner"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_name"));
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_proc"));
  mrb_value klass = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_klass"));

  ume = method_object_alloc(mrb, mrb_class_get(mrb, "UnboundMethod"));
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "_owner"), owner);
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "_recv"), mrb_nil_value());
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "_name"), name);
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "_proc"), proc);
  mrb_obj_iv_set(mrb, ume, mrb_intern_lit(mrb, "_klass"), klass);

  return mrb_obj_value(ume);
}
