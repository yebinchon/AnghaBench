
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DIRSEP (char) ;
 char* strchr (char const*,int ) ;

char *tcc_basename(const char *name)
{
 char *p = strchr (name, 0);
 while (p && p > name && !IS_DIRSEP (p[-1]))
  --p;
 return p;
}
