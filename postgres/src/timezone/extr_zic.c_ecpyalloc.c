
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memcheck (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static char *
ecpyalloc(char const *str)
{
 return memcheck(strdup(str));
}
