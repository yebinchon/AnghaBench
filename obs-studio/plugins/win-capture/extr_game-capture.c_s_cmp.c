
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static inline int s_cmp(const char *str1, const char *str2)
{
 if (!str1 || !str2)
  return -1;

 return strcmp(str1, str2);
}
