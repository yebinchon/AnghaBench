
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *
strchrnul(const char *s, int c)
{
 while (*s != '\0' && *s != c)
  s++;
 return s;
}
