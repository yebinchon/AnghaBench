
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* keyword; char const* val; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef int PQExpBuffer ;


 int PQconninfoFree (TYPE_1__*) ;
 int conninfo_add_defaults (TYPE_1__*,int ) ;
 TYPE_1__* conninfo_init (int ) ;
 int free (char const*) ;
 int libpq_gettext (char*) ;
 TYPE_1__* parse_connection_string (char const*,int ,int) ;
 int printfPQExpBuffer (int ,int ,...) ;
 scalar_t__ recognized_connection_string (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 void* strdup (char const*) ;

__attribute__((used)) static PQconninfoOption *
conninfo_array_parse(const char *const *keywords, const char *const *values,
      PQExpBuffer errorMessage, bool use_defaults,
      int expand_dbname)
{
 PQconninfoOption *options;
 PQconninfoOption *dbname_options = ((void*)0);
 PQconninfoOption *option;
 int i = 0;





 while (expand_dbname && keywords[i])
 {
  const char *pname = keywords[i];
  const char *pvalue = values[i];


  if (strcmp(pname, "dbname") == 0 && pvalue)
  {





   if (recognized_connection_string(pvalue))
   {
    dbname_options = parse_connection_string(pvalue, errorMessage, 0);
    if (dbname_options == ((void*)0))
     return ((void*)0);
   }
   break;
  }
  ++i;
 }


 options = conninfo_init(errorMessage);
 if (options == ((void*)0))
 {
  PQconninfoFree(dbname_options);
  return ((void*)0);
 }


 i = 0;
 while (keywords[i])
 {
  const char *pname = keywords[i];
  const char *pvalue = values[i];

  if (pvalue != ((void*)0) && pvalue[0] != '\0')
  {

   for (option = options; option->keyword != ((void*)0); option++)
   {
    if (strcmp(option->keyword, pname) == 0)
     break;
   }


   if (option->keyword == ((void*)0))
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("invalid connection option \"%s\"\n"),
          pname);
    PQconninfoFree(options);
    PQconninfoFree(dbname_options);
    return ((void*)0);
   }






   if (strcmp(pname, "dbname") == 0 && dbname_options)
   {
    PQconninfoOption *str_option;

    for (str_option = dbname_options; str_option->keyword != ((void*)0); str_option++)
    {
     if (str_option->val != ((void*)0))
     {
      int k;

      for (k = 0; options[k].keyword; k++)
      {
       if (strcmp(options[k].keyword, str_option->keyword) == 0)
       {
        if (options[k].val)
         free(options[k].val);
        options[k].val = strdup(str_option->val);
        if (!options[k].val)
        {
         printfPQExpBuffer(errorMessage,
               libpq_gettext("out of memory\n"));
         PQconninfoFree(options);
         PQconninfoFree(dbname_options);
         return ((void*)0);
        }
        break;
       }
      }
     }
    }





    PQconninfoFree(dbname_options);
    dbname_options = ((void*)0);
   }
   else
   {



    if (option->val)
     free(option->val);
    option->val = strdup(pvalue);
    if (!option->val)
    {
     printfPQExpBuffer(errorMessage,
           libpq_gettext("out of memory\n"));
     PQconninfoFree(options);
     PQconninfoFree(dbname_options);
     return ((void*)0);
    }
   }
  }
  ++i;
 }
 PQconninfoFree(dbname_options);




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
