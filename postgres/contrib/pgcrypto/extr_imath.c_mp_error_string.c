
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;


 char const** s_error_msg ;
 char const* s_unknown_err ;

const char *
mp_error_string(mp_result res)
{
 if (res > 0)
  return s_unknown_err;

 res = -res;
 int ix;

 for (ix = 0; ix < res && s_error_msg[ix] != ((void*)0); ++ix)
  ;

 if (s_error_msg[ix] != ((void*)0))
 {
  return s_error_msg[ix];
 }
 else
 {
  return s_unknown_err;
 }
}
