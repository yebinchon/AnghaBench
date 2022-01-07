
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {char* keyword; int * val; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef int PQExpBuffer ;
typedef int FILE ;


 int MAXBUFSIZE ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int ldapServiceLookup (char*,TYPE_1__*,int ) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int ,int ,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int * strdup (char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int
parseServiceFile(const char *serviceFile,
     const char *service,
     PQconninfoOption *options,
     PQExpBuffer errorMessage,
     bool *group_found)
{
 int linenr = 0,
    i;
 FILE *f;
 char buf[MAXBUFSIZE],
      *line;

 f = fopen(serviceFile, "r");
 if (f == ((void*)0))
 {
  printfPQExpBuffer(errorMessage, libpq_gettext("service file \"%s\" not found\n"),
        serviceFile);
  return 1;
 }

 while ((line = fgets(buf, sizeof(buf), f)) != ((void*)0))
 {
  int len;

  linenr++;

  if (strlen(line) >= sizeof(buf) - 1)
  {
   fclose(f);
   printfPQExpBuffer(errorMessage,
         libpq_gettext("line %d too long in service file \"%s\"\n"),
         linenr,
         serviceFile);
   return 2;
  }


  len = strlen(line);
  while (len > 0 && isspace((unsigned char) line[len - 1]))
   line[--len] = '\0';


  while (*line && isspace((unsigned char) line[0]))
   line++;


  if (line[0] == '\0' || line[0] == '#')
   continue;


  if (line[0] == '[')
  {
   if (*group_found)
   {

    fclose(f);
    return 0;
   }

   if (strncmp(line + 1, service, strlen(service)) == 0 &&
    line[strlen(service) + 1] == ']')
    *group_found = 1;
   else
    *group_found = 0;
  }
  else
  {
   if (*group_found)
   {



    char *key,
         *val;
    bool found_keyword;
    key = line;
    val = strchr(line, '=');
    if (val == ((void*)0))
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("syntax error in service file \"%s\", line %d\n"),
           serviceFile,
           linenr);
     fclose(f);
     return 3;
    }
    *val++ = '\0';

    if (strcmp(key, "service") == 0)
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("nested service specifications not supported in service file \"%s\", line %d\n"),
           serviceFile,
           linenr);
     fclose(f);
     return 3;
    }





    found_keyword = 0;
    for (i = 0; options[i].keyword; i++)
    {
     if (strcmp(options[i].keyword, key) == 0)
     {
      if (options[i].val == ((void*)0))
       options[i].val = strdup(val);
      if (!options[i].val)
      {
       printfPQExpBuffer(errorMessage,
             libpq_gettext("out of memory\n"));
       fclose(f);
       return 3;
      }
      found_keyword = 1;
      break;
     }
    }

    if (!found_keyword)
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("syntax error in service file \"%s\", line %d\n"),
           serviceFile,
           linenr);
     fclose(f);
     return 3;
    }
   }
  }
 }

 fclose(f);

 return 0;
}
