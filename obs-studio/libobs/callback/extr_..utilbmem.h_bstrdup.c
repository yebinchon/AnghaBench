
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bstrdup_n (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *bstrdup(const char *str)
{
 if (!str)
  return ((void*)0);

 return bstrdup_n(str, strlen(str));
}
