
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_fixnum_value (int ) ;
 char* mrb_sym_name_len (int *,int ,int *) ;
 int mrb_symbol (int ) ;
 int mrb_utf8_len (char const*,int ) ;

__attribute__((used)) static mrb_value
mrb_sym_length(mrb_state *mrb, mrb_value self)
{
  mrb_int len;





  mrb_sym_name_len(mrb, mrb_symbol(self), &len);

  return mrb_fixnum_value(len);
}
