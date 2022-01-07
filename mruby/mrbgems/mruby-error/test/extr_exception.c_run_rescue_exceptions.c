
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct RClass* E_TYPE_ERROR ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_rescue_exceptions (int *,int ,int ,int ,int ,int,struct RClass**) ;
 int protect_cb ;

__attribute__((used)) static mrb_value
run_rescue_exceptions(mrb_state *mrb, mrb_value self)
{
  mrb_value b, r;
  struct RClass *cls[1];
  mrb_get_args(mrb, "oo", &b, &r);
  cls[0] = E_TYPE_ERROR;
  return mrb_rescue_exceptions(mrb, protect_cb, b, protect_cb, r, 1, cls);
}
