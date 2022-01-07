
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_11__ {int translate_header; int const* translate_columns; int n_translate_columns; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int lengthof (int const*) ;
 int pg_log_error (char*,int ) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describeSubscriptions(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {0, 0, 0, 0,
 0, 0};

 if (pset.sversion < 100000)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support subscriptions.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT subname AS \"%s\"\n"
       ",  pg_catalog.pg_get_userbyid(subowner) AS \"%s\"\n"
       ",  subenabled AS \"%s\"\n"
       ",  subpublications AS \"%s\"\n",
       gettext_noop("Name"),
       gettext_noop("Owner"),
       gettext_noop("Enabled"),
       gettext_noop("Publication"));

 if (verbose)
 {
  appendPQExpBuffer(&buf,
        ",  subsynccommit AS \"%s\"\n"
        ",  subconninfo AS \"%s\"\n",
        gettext_noop("Synchronous commit"),
        gettext_noop("Conninfo"));
 }


 appendPQExpBufferStr(&buf,
       "FROM pg_catalog.pg_subscription\n"
       "WHERE subdbid = (SELECT oid\n"
       "                 FROM pg_catalog.pg_database\n"
       "                 WHERE datname = pg_catalog.current_database())");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        ((void*)0), "subname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of subscriptions");
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
