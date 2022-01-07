
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int db; int vars; } ;
struct TYPE_5__ {char* data; } ;
typedef int PsqlScanQuoteType ;
typedef TYPE_1__ PQExpBufferData ;
typedef int ConditionalStack ;


 char* GetVariable (int ,char const*) ;




 char* PQerrorMessage (int ) ;
 char* PQescapeIdentifier (int ,char const*,int ) ;
 char* PQescapeLiteral (int ,char const*,int ) ;
 int PQfreemem (char*) ;
 int appendShellStringNoError (TYPE_1__*,char const*) ;
 int conditional_active (int ) ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,char const*) ;
 char* pg_strdup (char const*) ;
 TYPE_2__ pset ;
 int strlen (char const*) ;

char *
psql_get_variable(const char *varname, PsqlScanQuoteType quote,
      void *passthrough)
{
 char *result = ((void*)0);
 const char *value;


 if (passthrough && !conditional_active((ConditionalStack) passthrough))
  return ((void*)0);

 value = GetVariable(pset.vars, varname);
 if (!value)
  return ((void*)0);

 switch (quote)
 {
  case 131:
   result = pg_strdup(value);
   break;
  case 128:
  case 129:
   {




    char *escaped_value;

    if (!pset.db)
    {
     pg_log_error("cannot escape without active connection");
     return ((void*)0);
    }

    if (quote == 128)
     escaped_value =
      PQescapeLiteral(pset.db, value, strlen(value));
    else
     escaped_value =
      PQescapeIdentifier(pset.db, value, strlen(value));

    if (escaped_value == ((void*)0))
    {
     const char *error = PQerrorMessage(pset.db);

     pg_log_info("%s", error);
     return ((void*)0);
    }






    result = pg_strdup(escaped_value);
    PQfreemem(escaped_value);
    break;
   }
  case 130:
   {






    PQExpBufferData buf;

    initPQExpBuffer(&buf);
    if (!appendShellStringNoError(&buf, value))
    {
     pg_log_error("shell command argument contains a newline or carriage return: \"%s\"",
         value);
     free(buf.data);
     return ((void*)0);
    }
    result = buf.data;
    break;
   }


 }

 return result;
}
