
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pnstrdup (char const*,size_t) ;
 size_t strlen (char const*) ;

char *
pchomp(const char *in)
{
 size_t n;

 n = strlen(in);
 while (n > 0 && in[n - 1] == '\n')
  n--;
 return pnstrdup(in, n);
}
