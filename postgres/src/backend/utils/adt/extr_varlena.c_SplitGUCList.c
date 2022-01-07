
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int * NIL ;
 int * lappend (int *,char*) ;
 int memmove (char*,char*,int ) ;
 scalar_t__ scanner_isspace (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

bool
SplitGUCList(char *rawstring, char separator,
    List **namelist)
{
 char *nextp = rawstring;
 bool done = 0;

 *namelist = NIL;

 while (scanner_isspace(*nextp))
  nextp++;

 if (*nextp == '\0')
  return 1;


 do
 {
  char *curname;
  char *endp;

  if (*nextp == '"')
  {

   curname = nextp + 1;
   for (;;)
   {
    endp = strchr(nextp + 1, '"');
    if (endp == ((void*)0))
     return 0;
    if (endp[1] != '"')
     break;

    memmove(endp, endp + 1, strlen(endp));
    nextp = endp;
   }

   nextp = endp + 1;
  }
  else
  {

   curname = nextp;
   while (*nextp && *nextp != separator &&
       !scanner_isspace(*nextp))
    nextp++;
   endp = nextp;
   if (curname == nextp)
    return 0;
  }

  while (scanner_isspace(*nextp))
   nextp++;

  if (*nextp == separator)
  {
   nextp++;
   while (scanner_isspace(*nextp))
    nextp++;

  }
  else if (*nextp == '\0')
   done = 1;
  else
   return 0;


  *endp = '\0';




  *namelist = lappend(*namelist, curname);


 } while (!done);

 return 1;
}
