
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int
strbcmp(const unsigned char *s1, const unsigned char *s2)
{
 int l1 = strlen((const char *) s1) - 1,
    l2 = strlen((const char *) s2) - 1;

 while (l1 >= 0 && l2 >= 0)
 {
  if (s1[l1] < s2[l2])
   return -1;
  if (s1[l1] > s2[l2])
   return 1;
  l1--;
  l2--;
 }
 if (l1 < l2)
  return -1;
 if (l1 > l2)
  return 1;

 return 0;
}
