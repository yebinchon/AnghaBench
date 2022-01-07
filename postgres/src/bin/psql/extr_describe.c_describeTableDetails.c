
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int quiet; int db; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int * PSQLexec (int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 scalar_t__ cancel_pressed ;
 int describeOneTableDetails (char const*,char const*,char const*,int) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*) ;
 int processSQLNamePattern (int ,TYPE_1__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_3__ pset ;
 int termPQExpBuffer (TYPE_1__*) ;

bool
describeTableDetails(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 int i;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT c.oid,\n"
       "  n.nspname,\n"
       "  c.relname\n"
       "FROM pg_catalog.pg_class c\n"
       "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace\n");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "WHERE n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern, !showSystem && !pattern, 0,
        "n.nspname", "c.relname", ((void*)0),
        "pg_catalog.pg_table_is_visible(c.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 2, 3;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 if (PQntuples(res) == 0)
 {
  if (!pset.quiet)
  {
   if (pattern)
    pg_log_error("Did not find any relation named \"%s\".",
        pattern);
   else
    pg_log_error("Did not find any relations.");
  }
  PQclear(res);
  return 0;
 }

 for (i = 0; i < PQntuples(res); i++)
 {
  const char *oid;
  const char *nspname;
  const char *relname;

  oid = PQgetvalue(res, i, 0);
  nspname = PQgetvalue(res, i, 1);
  relname = PQgetvalue(res, i, 2);

  if (!describeOneTableDetails(nspname, relname, oid, verbose))
  {
   PQclear(res);
   return 0;
  }
  if (cancel_pressed)
  {
   PQclear(res);
   return 0;
  }
 }

 PQclear(res);
 return 1;
}
