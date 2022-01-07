
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t NAMEDATALEN ;
 scalar_t__ strchr (char*,char const) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 size_t strspn (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool
validOperatorName(const char *name)
{
 size_t len = strlen(name);


 if (len == 0 || len >= NAMEDATALEN)
  return 0;



 if (strspn(name, "~!@#^&|`?+-*/%<>=") != len)
  return 0;


 if (strstr(name, "/*") || strstr(name, "--"))
  return 0;
 if (len > 1 &&
  (name[len - 1] == '+' ||
   name[len - 1] == '-'))
 {
  int ic;

  for (ic = len - 2; ic >= 0; ic--)
  {
   if (strchr("~!@#^&|`?%", name[ic]))
    break;
  }
  if (ic < 0)
   return 0;
 }


 if (strcmp(name, "!=") == 0)
  return 0;

 return 1;
}
