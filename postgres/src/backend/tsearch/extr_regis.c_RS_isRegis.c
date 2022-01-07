
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int RS_IN_NONEOF ;
 int RS_IN_ONEOF ;
 int RS_IN_ONEOF_IN ;
 int RS_IN_WAIT ;
 int elog (int ,char*,int) ;
 int pg_mblen (char const*) ;
 scalar_t__ t_isalpha (char const*) ;
 scalar_t__ t_iseq (char const*,char) ;

bool
RS_isRegis(const char *str)
{
 int state = RS_IN_WAIT;
 const char *c = str;

 while (*c)
 {
  if (state == RS_IN_WAIT)
  {
   if (t_isalpha(c))
                ;
   else if (t_iseq(c, '['))
    state = RS_IN_ONEOF;
   else
    return 0;
  }
  else if (state == RS_IN_ONEOF)
  {
   if (t_iseq(c, '^'))
    state = RS_IN_NONEOF;
   else if (t_isalpha(c))
    state = RS_IN_ONEOF_IN;
   else
    return 0;
  }
  else if (state == RS_IN_ONEOF_IN || state == RS_IN_NONEOF)
  {
   if (t_isalpha(c))
                ;
   else if (t_iseq(c, ']'))
    state = RS_IN_WAIT;
   else
    return 0;
  }
  else
   elog(ERROR, "internal error in RS_isRegis: state %d", state);
  c += pg_mblen(c);
 }

 return (state == RS_IN_WAIT);
}
