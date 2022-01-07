
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* val; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef int PQExpBuffer ;


 TYPE_1__* conninfo_find (TYPE_1__*,char const*) ;
 char* conninfo_uri_decode (char const*,int ) ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int ,int ,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static PQconninfoOption *
conninfo_storeval(PQconninfoOption *connOptions,
      const char *keyword, const char *value,
      PQExpBuffer errorMessage, bool ignoreMissing,
      bool uri_decode)
{
 PQconninfoOption *option;
 char *value_copy;






 if (strcmp(keyword, "requiressl") == 0)
 {
  keyword = "sslmode";
  if (value[0] == '1')
   value = "require";
  else
   value = "prefer";
 }

 option = conninfo_find(connOptions, keyword);
 if (option == ((void*)0))
 {
  if (!ignoreMissing)
   printfPQExpBuffer(errorMessage,
         libpq_gettext("invalid connection option \"%s\"\n"),
         keyword);
  return ((void*)0);
 }

 if (uri_decode)
 {
  value_copy = conninfo_uri_decode(value, errorMessage);
  if (value_copy == ((void*)0))

   return ((void*)0);
 }
 else
 {
  value_copy = strdup(value);
  if (value_copy == ((void*)0))
  {
   printfPQExpBuffer(errorMessage, libpq_gettext("out of memory\n"));
   return ((void*)0);
  }
 }

 if (option->val)
  free(option->val);
 option->val = value_copy;

 return option;
}
