
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IspellDict ;


 char* cpalloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
cpstrdup(IspellDict *Conf, const char *str)
{
 char *res = cpalloc(strlen(str) + 1);

 strcpy(res, str);
 return res;
}
