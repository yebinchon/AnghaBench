
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int mrb_bool ;


 scalar_t__ ISUPPER (char const) ;
 scalar_t__ mrb_ident_p (char const*,scalar_t__) ;

mrb_bool
mrb_const_name_p(mrb_state *mrb, const char *name, mrb_int len)
{
  return len > 0 && ISUPPER(name[0]) && mrb_ident_p(name+1, len-1);
}
