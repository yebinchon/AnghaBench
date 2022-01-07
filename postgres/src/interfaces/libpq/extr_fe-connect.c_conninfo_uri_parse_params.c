
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
typedef int PQconninfoOption ;
typedef TYPE_1__* PQExpBuffer ;


 int conninfo_storeval (int *,char*,char*,TYPE_1__*,int,int) ;
 char* conninfo_uri_decode (char*,TYPE_1__*) ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (TYPE_1__*,int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
conninfo_uri_parse_params(char *params,
        PQconninfoOption *connOptions,
        PQExpBuffer errorMessage)
{
 while (*params)
 {
  char *keyword = params;
  char *value = ((void*)0);
  char *p = params;
  bool malloced = 0;





  for (;;)
  {
   if (*p == '=')
   {

    if (value != ((void*)0))
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("extra key/value separator \"=\" in URI query parameter: \"%s\"\n"),
           keyword);
     return 0;
    }

    *p++ = '\0';
    value = p;
   }
   else if (*p == '&' || *p == '\0')
   {




    if (*p != '\0')
     *p++ = '\0';

    if (value == ((void*)0))
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("missing key/value separator \"=\" in URI query parameter: \"%s\"\n"),
           keyword);
     return 0;
    }

    break;
   }
   else
    ++p;
  }

  keyword = conninfo_uri_decode(keyword, errorMessage);
  if (keyword == ((void*)0))
  {

   return 0;
  }
  value = conninfo_uri_decode(value, errorMessage);
  if (value == ((void*)0))
  {

   free(keyword);
   return 0;
  }
  malloced = 1;




  if (strcmp(keyword, "ssl") == 0 &&
   strcmp(value, "true") == 0)
  {
   free(keyword);
   free(value);
   malloced = 0;

   keyword = "sslmode";
   value = "require";
  }






  if (!conninfo_storeval(connOptions, keyword, value,
          errorMessage, 1, 0))
  {

   if (errorMessage->len == 0)
    printfPQExpBuffer(errorMessage,
          libpq_gettext("invalid URI query parameter: \"%s\"\n"),
          keyword);

   if (malloced)
   {
    free(keyword);
    free(value);
   }
   return 0;
  }

  if (malloced)
  {
   free(keyword);
   free(value);
  }


  params = p;
 }

 return 1;
}
