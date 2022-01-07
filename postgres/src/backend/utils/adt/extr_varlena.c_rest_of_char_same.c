
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool
rest_of_char_same(const char *s1, const char *s2, int len)
{
 while (len > 0)
 {
  len--;
  if (s1[len] != s2[len])
   return 0;
 }
 return 1;
}
