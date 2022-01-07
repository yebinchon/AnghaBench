
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_elog_output ;
 int elog (int ,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
get_last_relevant_decnum(char *num)
{
 char *result,
      *p = strchr(num, '.');





 if (!p)
  return ((void*)0);

 result = p;

 while (*(++p))
 {
  if (*p != '0')
   result = p;
 }

 return result;
}
