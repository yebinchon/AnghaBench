
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



__attribute__((used)) static int
pg_wcscmp(const pg_wchar *s1, const pg_wchar *s2)
{
 for (;;)
 {
  if (*s1 < *s2)
   return -1;
  if (*s1 > *s2)
   return 1;
  if (*s1 == 0)
   return 0;
  s1++;
  s2++;
 }
}
