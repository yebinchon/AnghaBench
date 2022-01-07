
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GETTEMP (char*,int *,int) ;
 int _DIAGASSERT (int ) ;

char *
mkdtemp(char *path)
{
 _DIAGASSERT(path != ((void*)0));

 return GETTEMP(path, ((void*)0), 1) ? path : ((void*)0);
}
