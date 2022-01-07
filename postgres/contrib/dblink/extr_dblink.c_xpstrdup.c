
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pstrdup (char const*) ;

__attribute__((used)) static char *
xpstrdup(const char *in)
{
 if (in == ((void*)0))
  return ((void*)0);
 return pstrdup(in);
}
