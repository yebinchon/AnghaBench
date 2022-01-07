
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mrb_int ;
typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;
 int identchar (char const) ;

mrb_bool
mrb_ident_p(const char *s, mrb_int len)
{
  mrb_int i;

  for (i = 0; i < len; i++) {
    if (!identchar(s[i])) return FALSE;
  }
  return TRUE;
}
