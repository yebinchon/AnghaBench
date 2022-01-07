
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_10__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_12__ {int sversion; int logfile; int queryFout; int quiet; int db; TYPE_1__ popt; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 scalar_t__ PQntuples (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_error (char*,...) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listDbRoleSettings(const char *pattern, const char *pattern2)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 bool havewhere;

 if (pset.sversion < 90000)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support per-database role settings.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf, "SELECT rolname AS \"%s\", datname AS \"%s\",\n"
       "pg_catalog.array_to_string(setconfig, E'\\n') AS \"%s\"\n"
       "FROM pg_catalog.pg_db_role_setting s\n"
       "LEFT JOIN pg_catalog.pg_database d ON d.oid = setdatabase\n"
       "LEFT JOIN pg_catalog.pg_roles r ON r.oid = setrole\n",
       gettext_noop("Role"),
       gettext_noop("Database"),
       gettext_noop("Settings"));
 havewhere = processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
           ((void*)0), "r.rolname", ((void*)0), ((void*)0));
 processSQLNamePattern(pset.db, &buf, pattern2, havewhere, 0,
        ((void*)0), "d.datname", ((void*)0), ((void*)0));
 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;







 if (PQntuples(res) == 0 && !pset.quiet)
 {
  if (pattern && pattern2)
   pg_log_error("Did not find any settings for role \"%s\" and database \"%s\".",
       pattern, pattern2);
  else if (pattern)
   pg_log_error("Did not find any settings for role \"%s\".",
       pattern);
  else
   pg_log_error("Did not find any settings.");
 }
 else
 {
  myopt.nullPrint = ((void*)0);
  myopt.title = _("List of settings");
  myopt.translate_header = 1;

  printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);
 }

 PQclear(res);
 return 1;
}
