
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
 int pg_log_error (char*,int ) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listExtensions(const char *pattern)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 if (pset.sversion < 90100)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support extensions.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT e.extname AS \"%s\", "
       "e.extversion AS \"%s\", n.nspname AS \"%s\", c.description AS \"%s\"\n"
       "FROM pg_catalog.pg_extension e "
       "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = e.extnamespace "
       "LEFT JOIN pg_catalog.pg_description c ON c.objoid = e.oid "
       "AND c.classoid = 'pg_catalog.pg_extension'::pg_catalog.regclass\n",
       gettext_noop("Name"),
       gettext_noop("Version"),
       gettext_noop("Schema"),
       gettext_noop("Description"));

 processSQLNamePattern(pset.db, &buf, pattern,
        0, 0,
        ((void*)0), "e.extname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of installed extensions");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
