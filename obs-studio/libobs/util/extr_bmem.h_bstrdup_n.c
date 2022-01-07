
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bmemdup (char const*,size_t) ;

__attribute__((used)) static inline char *bstrdup_n(const char *str, size_t n)
{
 char *dup;
 if (!str)
  return ((void*)0);

 dup = (char *)bmemdup(str, n + 1);
 dup[n] = 0;

 return dup;
}
