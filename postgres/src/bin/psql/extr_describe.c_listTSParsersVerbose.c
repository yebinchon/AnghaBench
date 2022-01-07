
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
 int PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int * PSQLexec (int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 scalar_t__ cancel_pressed ;
 int describeOneTSParser (char const*,char const*,char const*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*) ;
 int processSQLNamePattern (int ,TYPE_1__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_3__ pset ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static bool
listTSParsersVerbose(const char *pattern)
{
 PQExpBufferData buf;
 PGresult *res;
 int i;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT p.oid,\n"
       "  n.nspname,\n"
       "  p.prsname\n"
       "FROM pg_catalog.pg_ts_parser p\n"
       "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.prsnamespace\n"
  );

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        "n.nspname", "p.prsname", ((void*)0),
        "pg_catalog.pg_ts_parser_is_visible(p.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 if (PQntuples(res) == 0)
 {
  if (!pset.quiet)
  {
   if (pattern)
    pg_log_error("Did not find any text search parser named \"%s\".",
        pattern);
   else
    pg_log_error("Did not find any text search parsers.");
  }
  PQclear(res);
  return 0;
 }

 for (i = 0; i < PQntuples(res); i++)
 {
  const char *oid;
  const char *nspname = ((void*)0);
  const char *prsname;

  oid = PQgetvalue(res, i, 0);
  if (!PQgetisnull(res, i, 1))
   nspname = PQgetvalue(res, i, 1);
  prsname = PQgetvalue(res, i, 2);

  if (!describeOneTSParser(oid, nspname, prsname))
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
