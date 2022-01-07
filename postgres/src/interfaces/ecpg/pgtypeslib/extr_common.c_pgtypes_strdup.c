
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 scalar_t__ strdup (char const*) ;

char *
pgtypes_strdup(const char *str)
{
 char *new = (char *) strdup(str);

 if (!new)
  errno = ENOMEM;
 return new;
}
