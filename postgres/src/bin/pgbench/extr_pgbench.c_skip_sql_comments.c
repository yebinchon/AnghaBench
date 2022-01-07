
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
skip_sql_comments(char *sql_command)
{
 char *p = sql_command;


 for (;;)
 {
  if (isspace((unsigned char) *p))
   p++;
  else if (strncmp(p, "--", 2) == 0)
  {
   p = strchr(p, '\n');
   if (p == ((void*)0))
    return ((void*)0);
   p++;
  }
  else
   break;
 }


 if (*p == '\0')
  return ((void*)0);

 return p;
}
