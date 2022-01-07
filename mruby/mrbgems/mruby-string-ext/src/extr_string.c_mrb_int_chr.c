
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int ENC_ASCII_8BIT ;
 int ENC_BINARY ;
 scalar_t__ ENC_COMP_P (int ,int ) ;
 int ENC_UTF8 ;
 int E_ARGUMENT_ERROR ;
 int int_chr_binary (int *,int ) ;
 int int_chr_utf8 (int *,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_nil_value () ;
 int mrb_raisef (int *,int ,char*,int ) ;

__attribute__((used)) static mrb_value
mrb_int_chr(mrb_state *mrb, mrb_value num)
{
  mrb_value enc;
  mrb_bool enc_given;

  mrb_get_args(mrb, "|S?", &enc, &enc_given);
  if (!enc_given ||
      ENC_COMP_P(enc, ENC_ASCII_8BIT) ||
      ENC_COMP_P(enc, ENC_BINARY)) {
    return int_chr_binary(mrb, num);
  }





  else {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "unknown encoding name - %v", enc);
  }

  return mrb_nil_value();
}
