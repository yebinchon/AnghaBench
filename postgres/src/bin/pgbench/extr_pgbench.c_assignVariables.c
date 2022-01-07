
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CState ;


 int free (char*) ;
 char* getVariable (int *,char*) ;
 char* parseVariable (char*,int*) ;
 char* replaceVariable (char**,char*,int,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
assignVariables(CState *st, char *sql)
{
 char *p,
      *name,
      *val;

 p = sql;
 while ((p = strchr(p, ':')) != ((void*)0))
 {
  int eaten;

  name = parseVariable(p, &eaten);
  if (name == ((void*)0))
  {
   while (*p == ':')
   {
    p++;
   }
   continue;
  }

  val = getVariable(st, name);
  free(name);
  if (val == ((void*)0))
  {
   p++;
   continue;
  }

  p = replaceVariable(&sql, p, eaten, val);
 }

 return sql;
}
