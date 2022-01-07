
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static char *
read_gucstate(char **srcptr, char *srcend)
{
 char *retptr = *srcptr;
 char *ptr;

 if (*srcptr >= srcend)
  elog(ERROR, "incomplete GUC state");


 for (ptr = *srcptr; ptr < srcend && *ptr != '\0'; ptr++)
  ;

 if (ptr >= srcend)
  elog(ERROR, "could not find null terminator in GUC state");


 *srcptr = ptr + 1;

 return retptr;
}
