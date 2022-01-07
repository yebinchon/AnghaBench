
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Archive ;


 char* pg_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char *
convertRegProcReference(Archive *fout, const char *proc)
{
 char *name;
 char *paren;
 bool inquote;


 if (strcmp(proc, "-") == 0)
  return ((void*)0);

 name = pg_strdup(proc);

 inquote = 0;
 for (paren = name; *paren; paren++)
 {
  if (*paren == '(' && !inquote)
  {
   *paren = '\0';
   break;
  }
  if (*paren == '"')
   inquote = !inquote;
 }
 return name;
}
