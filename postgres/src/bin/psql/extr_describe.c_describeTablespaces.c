
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_12__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_info (char*,int ) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describeTablespaces(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 if (pset.sversion < 80000)
 {
  char sverbuf[32];

  pg_log_info("The server (version %s) does not support tablespaces.",
     formatPGVersionNumber(pset.sversion, 0,
            sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);

 if (pset.sversion >= 90200)
  printfPQExpBuffer(&buf,
        "SELECT spcname AS \"%s\",\n"
        "  pg_catalog.pg_get_userbyid(spcowner) AS \"%s\",\n"
        "  pg_catalog.pg_tablespace_location(oid) AS \"%s\"",
        gettext_noop("Name"),
        gettext_noop("Owner"),
        gettext_noop("Location"));
 else
  printfPQExpBuffer(&buf,
        "SELECT spcname AS \"%s\",\n"
        "  pg_catalog.pg_get_userbyid(spcowner) AS \"%s\",\n"
        "  spclocation AS \"%s\"",
        gettext_noop("Name"),
        gettext_noop("Owner"),
        gettext_noop("Location"));

 if (verbose)
 {
  appendPQExpBufferStr(&buf, ",\n  ");
  printACLColumn(&buf, "spcacl");
 }

 if (verbose && pset.sversion >= 90000)
  appendPQExpBuffer(&buf,
        ",\n  spcoptions AS \"%s\"",
        gettext_noop("Options"));

 if (verbose && pset.sversion >= 90200)
  appendPQExpBuffer(&buf,
        ",\n  pg_catalog.pg_size_pretty(pg_catalog.pg_tablespace_size(oid)) AS \"%s\"",
        gettext_noop("Size"));

 if (verbose && pset.sversion >= 80200)
  appendPQExpBuffer(&buf,
        ",\n  pg_catalog.shobj_description(oid, 'pg_tablespace') AS \"%s\"",
        gettext_noop("Description"));

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_tablespace\n");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        ((void*)0), "spcname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of tablespaces");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
