
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UNICODE_STRING ;
typedef int (* RTLINITUNICODESTRINGFUNC ) (int *,int const*) ;


 scalar_t__ get_nt_func (char*) ;

__attribute__((used)) static void rtl_init_str(UNICODE_STRING *unistr, const wchar_t *str)
{
 static bool initialized = 0;
 static RTLINITUNICODESTRINGFUNC func = ((void*)0);

 if (!initialized) {
  func = (RTLINITUNICODESTRINGFUNC)get_nt_func(
   "RtlInitUnicodeString");
  initialized = 1;
 }

 if (func)
  func(unistr, str);
}
