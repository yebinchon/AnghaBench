
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
 int describeOneTSConfig (char const*,char const*,char const*,char const*,char const*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*) ;
 int processSQLNamePattern (int ,TYPE_1__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_3__ pset ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static bool
listTSConfigsVerbose(const char *pattern)
{
 PQExpBufferData buf;
 PGresult *res;
 int i;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT c.oid, c.cfgname,\n"
       "   n.nspname,\n"
       "   p.prsname,\n"
       "   np.nspname as pnspname\n"
       "FROM pg_catalog.pg_ts_config c\n"
       "   LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.cfgnamespace,\n"
       " pg_catalog.pg_ts_parser p\n"
       "   LEFT JOIN pg_catalog.pg_namespace np ON np.oid = p.prsnamespace\n"
       "WHERE  p.oid = c.cfgparser\n"
  );

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "n.nspname", "c.cfgname", ((void*)0),
        "pg_catalog.pg_ts_config_is_visible(c.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 3, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 if (PQntuples(res) == 0)
 {
  if (!pset.quiet)
  {
   if (pattern)
    pg_log_error("Did not find any text search configuration named \"%s\".",
        pattern);
   else
    pg_log_error("Did not find any text search configurations.");
  }
  PQclear(res);
  return 0;
 }

 for (i = 0; i < PQntuples(res); i++)
 {
  const char *oid;
  const char *cfgname;
  const char *nspname = ((void*)0);
  const char *prsname;
  const char *pnspname = ((void*)0);

  oid = PQgetvalue(res, i, 0);
  cfgname = PQgetvalue(res, i, 1);
  if (!PQgetisnull(res, i, 2))
   nspname = PQgetvalue(res, i, 2);
  prsname = PQgetvalue(res, i, 3);
  if (!PQgetisnull(res, i, 4))
   pnspname = PQgetvalue(res, i, 4);

  if (!describeOneTSConfig(oid, nspname, cfgname, pnspname, prsname))
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
