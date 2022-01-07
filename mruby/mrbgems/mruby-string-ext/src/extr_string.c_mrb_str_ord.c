
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__* RSTRING_PTR (int ) ;
 int mrb_fixnum_value (unsigned char) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
mrb_str_ord(mrb_state* mrb, mrb_value str)
{
  if (RSTRING_LEN(str) == 0)
    mrb_raise(mrb, E_ARGUMENT_ERROR, "empty string");
  return mrb_fixnum_value((unsigned char)RSTRING_PTR(str)[0]);
}
