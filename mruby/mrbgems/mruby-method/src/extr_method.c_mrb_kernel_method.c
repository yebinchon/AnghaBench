
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef struct RProc RObject ;
typedef struct RProc RClass ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int FALSE ;
 struct RProc* method_object_alloc (int *,int ) ;
 struct RProc* mrb_class (int *,int ) ;
 int mrb_class_get (int *,char*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_nil_value () ;
 int mrb_obj_iv_set (int *,struct RProc*,int ,int ) ;
 int mrb_obj_value (struct RProc*) ;
 int mrb_search_method_owner (int *,struct RProc*,int ,int ,struct RProc**,struct RProc**,int ) ;
 int mrb_symbol_value (int ) ;

__attribute__((used)) static mrb_value
mrb_kernel_method(mrb_state *mrb, mrb_value self)
{
  struct RClass *owner;
  struct RProc *proc;
  struct RObject *me;
  mrb_sym name;

  mrb_get_args(mrb, "n", &name);

  mrb_search_method_owner(mrb, mrb_class(mrb, self), self, name, &owner, &proc, FALSE);

  me = method_object_alloc(mrb, mrb_class_get(mrb, "Method"));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "_owner"), mrb_obj_value(owner));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "_recv"), self);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "_name"), mrb_symbol_value(name));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "_proc"), proc ? mrb_obj_value(proc) : mrb_nil_value());
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "_klass"), mrb_obj_value(mrb_class(mrb, self)));

  return mrb_obj_value(me);
}
