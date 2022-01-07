
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* d_demangle (char const*,int,size_t*) ;

char *
cplus_demangle_v3 (const char *mangled, int options)
{
  size_t alc;

  return d_demangle (mangled, options, &alc);
}
