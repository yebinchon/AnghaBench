
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 scalar_t__ pqResultAlloc (int *,scalar_t__,int) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
pqResultStrdup(PGresult *res, const char *str)
{
 char *space = (char *) pqResultAlloc(res, strlen(str) + 1, 0);

 if (space)
  strcpy(space, str);
 return space;
}
