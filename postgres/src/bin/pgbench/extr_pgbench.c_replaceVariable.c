
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 char* pg_realloc (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
replaceVariable(char **sql, char *param, int len, char *value)
{
 int valueln = strlen(value);

 if (valueln > len)
 {
  size_t offset = param - *sql;

  *sql = pg_realloc(*sql, strlen(*sql) - len + valueln + 1);
  param = *sql + offset;
 }

 if (valueln != len)
  memmove(param + valueln, param + len, strlen(param + len) + 1);
 memcpy(param, value, valueln);

 return param + valueln;
}
