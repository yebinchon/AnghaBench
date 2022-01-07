
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (char const) ;

__attribute__((used)) static bool
pg_is_ascii_string(const char *p)
{
 while (*p)
 {
  if (IS_HIGHBIT_SET(*p))
   return 0;
  p++;
 }
 return 1;
}
