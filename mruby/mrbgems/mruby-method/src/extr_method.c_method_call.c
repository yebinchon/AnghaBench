
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mcall (int *,int ,int ,int ,struct RClass*,int ,int *,int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_get_args (int *,char*,int **,int *,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;

__attribute__((used)) static mrb_value
method_call(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_proc"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_name"));
  mrb_value recv = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_recv"));
  struct RClass *owner = mrb_class_ptr(mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "_owner")));
  mrb_int argc;
  mrb_value *argv, block;

  mrb_get_args(mrb, "*&", &argv, &argc, &block);
  return mcall(mrb, recv, proc, name, owner, argc, argv, block);
}
