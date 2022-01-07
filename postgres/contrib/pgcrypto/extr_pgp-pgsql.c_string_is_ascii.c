
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (char const) ;

__attribute__((used)) static bool
string_is_ascii(const char *str)
{
 const char *p;

 for (p = str; *p; p++)
 {
  if (IS_HIGHBIT_SET(*p))
   return 0;
 }
 return 1;
}
