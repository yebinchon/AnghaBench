
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ calloc (long,long) ;
 int errno ;

char *
pgtypes_alloc(long size)
{
 char *new = (char *) calloc(1L, size);

 if (!new)
  errno = ENOMEM;
 return new;
}
