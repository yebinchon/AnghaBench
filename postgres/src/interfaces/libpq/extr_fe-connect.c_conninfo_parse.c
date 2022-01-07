
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQconninfoOption ;
typedef int PQExpBuffer ;


 int PQconninfoFree (int *) ;
 int conninfo_add_defaults (int *,int ) ;
 int * conninfo_init (int ) ;
 int conninfo_storeval (int *,char*,char*,int ,int,int) ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int ,int ,...) ;
 char* strdup (char const*) ;

__attribute__((used)) static PQconninfoOption *
conninfo_parse(const char *conninfo, PQExpBuffer errorMessage,
      bool use_defaults)
{
 char *pname;
 char *pval;
 char *buf;
 char *cp;
 char *cp2;
 PQconninfoOption *options;


 options = conninfo_init(errorMessage);
 if (options == ((void*)0))
  return ((void*)0);


 if ((buf = strdup(conninfo)) == ((void*)0))
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("out of memory\n"));
  PQconninfoFree(options);
  return ((void*)0);
 }
 cp = buf;

 while (*cp)
 {

  if (isspace((unsigned char) *cp))
  {
   cp++;
   continue;
  }


  pname = cp;
  while (*cp)
  {
   if (*cp == '=')
    break;
   if (isspace((unsigned char) *cp))
   {
    *cp++ = '\0';
    while (*cp)
    {
     if (!isspace((unsigned char) *cp))
      break;
     cp++;
    }
    break;
   }
   cp++;
  }


  if (*cp != '=')
  {
   printfPQExpBuffer(errorMessage,
         libpq_gettext("missing \"=\" after \"%s\" in connection info string\n"),
         pname);
   PQconninfoFree(options);
   free(buf);
   return ((void*)0);
  }
  *cp++ = '\0';


  while (*cp)
  {
   if (!isspace((unsigned char) *cp))
    break;
   cp++;
  }


  pval = cp;

  if (*cp != '\'')
  {
   cp2 = pval;
   while (*cp)
   {
    if (isspace((unsigned char) *cp))
    {
     *cp++ = '\0';
     break;
    }
    if (*cp == '\\')
    {
     cp++;
     if (*cp != '\0')
      *cp2++ = *cp++;
    }
    else
     *cp2++ = *cp++;
   }
   *cp2 = '\0';
  }
  else
  {
   cp2 = pval;
   cp++;
   for (;;)
   {
    if (*cp == '\0')
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("unterminated quoted string in connection info string\n"));
     PQconninfoFree(options);
     free(buf);
     return ((void*)0);
    }
    if (*cp == '\\')
    {
     cp++;
     if (*cp != '\0')
      *cp2++ = *cp++;
     continue;
    }
    if (*cp == '\'')
    {
     *cp2 = '\0';
     cp++;
     break;
    }
    *cp2++ = *cp++;
   }
  }




  if (!conninfo_storeval(options, pname, pval, errorMessage, 0, 0))
  {
   PQconninfoFree(options);
   free(buf);
   return ((void*)0);
  }
 }


 free(buf);




 if (use_defaults)
 {
  if (!conninfo_add_defaults(options, errorMessage))
  {
   PQconninfoFree(options);
   return ((void*)0);
  }
 }

 return options;
}
