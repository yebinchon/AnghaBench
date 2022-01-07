
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int TRUE ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_nil_value () ;
 scalar_t__ str_tr (int *,int ,int ,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_tr_s_bang(mrb_state *mrb, mrb_value str)
{
  mrb_value p1, p2;

  mrb_get_args(mrb, "SS", &p1, &p2);
  if (str_tr(mrb, str, p1, p2, TRUE)) {
    return str;
  }
  return mrb_nil_value();
}
