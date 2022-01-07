
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
struct TYPE_12__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int listTSParsersVerbose (char const*) ;
 int pg_log_error (char*,int ) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listTSParsers(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 if (pset.sversion < 80300)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support full text search.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 if (verbose)
  return listTSParsersVerbose(pattern);

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT\n"
       "  n.nspname as \"%s\",\n"
       "  p.prsname as \"%s\",\n"
       "  pg_catalog.obj_description(p.oid, 'pg_ts_parser') as \"%s\"\n"
       "FROM pg_catalog.pg_ts_parser p\n"
       "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.prsnamespace\n",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Description")
  );

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        "n.nspname", "p.prsname", ((void*)0),
        "pg_catalog.pg_ts_parser_is_visible(p.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of text search parsers");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
