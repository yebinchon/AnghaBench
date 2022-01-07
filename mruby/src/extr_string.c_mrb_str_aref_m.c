
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_str_aref (int *,int ,int ,int ) ;
 int mrb_undef_value () ;

__attribute__((used)) static mrb_value
mrb_str_aref_m(mrb_state *mrb, mrb_value str)
{
  mrb_value a1, a2;

  if (mrb_get_args(mrb, "o|o", &a1, &a2) == 1) {
    a2 = mrb_undef_value();
  }

  return mrb_str_aref(mrb, str, a1, a2);
}
