
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__ bmemdup (scalar_t__ const*,size_t) ;

__attribute__((used)) static inline wchar_t *bwstrdup_n(const wchar_t *str, size_t n)
{
 wchar_t *dup;
 if (!str)
  return ((void*)0);

 dup = (wchar_t *)bmemdup(str, (n + 1) * sizeof(wchar_t));
 dup[n] = 0;

 return dup;
}
