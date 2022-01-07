
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describeOperators(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT n.nspname as \"%s\",\n"
       "  o.oprname AS \"%s\",\n"
       "  CASE WHEN o.oprkind='l' THEN NULL ELSE pg_catalog.format_type(o.oprleft, NULL) END AS \"%s\",\n"
       "  CASE WHEN o.oprkind='r' THEN NULL ELSE pg_catalog.format_type(o.oprright, NULL) END AS \"%s\",\n"
       "  pg_catalog.format_type(o.oprresult, NULL) AS \"%s\",\n",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Left arg type"),
       gettext_noop("Right arg type"),
       gettext_noop("Result type"));

 if (verbose)
  appendPQExpBuffer(&buf,
        "  o.oprcode AS \"%s\",\n",
        gettext_noop("Function"));

 appendPQExpBuffer(&buf,
       "  coalesce(pg_catalog.obj_description(o.oid, 'pg_operator'),\n"
       "           pg_catalog.obj_description(o.oprcode, 'pg_proc')) AS \"%s\"\n"
       "FROM pg_catalog.pg_operator o\n"
       "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = o.oprnamespace\n",
       gettext_noop("Description"));

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "WHERE n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern, !showSystem && !pattern, 1,
        "n.nspname", "o.oprname", ((void*)0),
        "pg_catalog.pg_operator_is_visible(o.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2, 3, 4;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of operators");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
