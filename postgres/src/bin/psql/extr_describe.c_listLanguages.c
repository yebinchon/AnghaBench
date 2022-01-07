
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listLanguages(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT l.lanname AS \"%s\",\n",
       gettext_noop("Name"));
 if (pset.sversion >= 80300)
  appendPQExpBuffer(&buf,
        "       pg_catalog.pg_get_userbyid(l.lanowner) as \"%s\",\n",
        gettext_noop("Owner"));

 appendPQExpBuffer(&buf,
       "       l.lanpltrusted AS \"%s\"",
       gettext_noop("Trusted"));

 if (verbose)
 {
  appendPQExpBuffer(&buf,
        ",\n       NOT l.lanispl AS \"%s\",\n"
        "       l.lanplcallfoid::pg_catalog.regprocedure AS \"%s\",\n"
        "       l.lanvalidator::pg_catalog.regprocedure AS \"%s\",\n       ",
        gettext_noop("Internal language"),
        gettext_noop("Call handler"),
        gettext_noop("Validator"));
  if (pset.sversion >= 90000)
   appendPQExpBuffer(&buf, "l.laninline::pg_catalog.regprocedure AS \"%s\",\n       ",
         gettext_noop("Inline handler"));
  printACLColumn(&buf, "l.lanacl");
 }

 appendPQExpBuffer(&buf,
       ",\n       d.description AS \"%s\""
       "\nFROM pg_catalog.pg_language l\n"
       "LEFT JOIN pg_catalog.pg_description d\n"
       "  ON d.classoid = l.tableoid AND d.objoid = l.oid\n"
       "  AND d.objsubid = 0\n",
       gettext_noop("Description"));

 if (pattern)
  processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
         ((void*)0), "l.lanname", ((void*)0), ((void*)0));

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "WHERE l.lanplcallfoid != 0\n");


 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of languages");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
