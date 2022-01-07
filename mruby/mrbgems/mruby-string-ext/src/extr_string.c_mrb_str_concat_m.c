
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int int_chr_binary (int *,int ) ;
 int int_chr_utf8 (int *,int ) ;
 int mrb_ensure_string_type (int *,int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 scalar_t__ mrb_float_p (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_cat_str (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_concat_m(mrb_state *mrb, mrb_value self)
{
  mrb_value str;

  mrb_get_args(mrb, "o", &str);
  if (mrb_fixnum_p(str) || mrb_float_p(str))



    str = int_chr_binary(mrb, str);

  else
    mrb_ensure_string_type(mrb, str);
  mrb_str_cat_str(mrb, self, str);
  return self;
}
