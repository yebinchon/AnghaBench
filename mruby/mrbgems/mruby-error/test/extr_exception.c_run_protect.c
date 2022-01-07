
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int mrb_ary_new_from_values (int *,int,int *) ;
 int mrb_bool_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_protect (int *,int ,int ,int *) ;
 int protect_cb ;

__attribute__((used)) static mrb_value
run_protect(mrb_state *mrb, mrb_value self)
{
  mrb_value b;
  mrb_value ret[2];
  mrb_bool state;
  mrb_get_args(mrb, "&", &b);
  ret[0] = mrb_protect(mrb, protect_cb, b, &state);
  ret[1] = mrb_bool_value(state);
  return mrb_ary_new_from_values(mrb, 2, ret);
}
