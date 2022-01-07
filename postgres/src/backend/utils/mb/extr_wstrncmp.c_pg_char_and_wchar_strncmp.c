
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



int
pg_char_and_wchar_strncmp(const char *s1, const pg_wchar *s2, size_t n)
{
 if (n == 0)
  return 0;
 do
 {
  if ((pg_wchar) ((unsigned char) *s1) != *s2++)
   return ((pg_wchar) ((unsigned char) *s1) - *(s2 - 1));
  if (*s1++ == 0)
   break;
 } while (--n != 0);
 return 0;
}
