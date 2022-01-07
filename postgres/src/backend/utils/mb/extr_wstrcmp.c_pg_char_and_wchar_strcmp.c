
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



int
pg_char_and_wchar_strcmp(const char *s1, const pg_wchar *s2)
{
 while ((pg_wchar) *s1 == *s2++)
  if (*s1++ == 0)
   return 0;
 return *(const unsigned char *) s1 - *(const pg_wchar *) (s2 - 1);
}
