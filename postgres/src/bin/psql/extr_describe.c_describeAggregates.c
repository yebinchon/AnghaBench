
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
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
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describeAggregates(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT n.nspname as \"%s\",\n"
       "  p.proname AS \"%s\",\n"
       "  pg_catalog.format_type(p.prorettype, NULL) AS \"%s\",\n",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Result data type"));

 if (pset.sversion >= 80400)
  appendPQExpBuffer(&buf,
        "  CASE WHEN p.pronargs = 0\n"
        "    THEN CAST('*' AS pg_catalog.text)\n"
        "    ELSE pg_catalog.pg_get_function_arguments(p.oid)\n"
        "  END AS \"%s\",\n",
        gettext_noop("Argument data types"));
 else if (pset.sversion >= 80200)
  appendPQExpBuffer(&buf,
        "  CASE WHEN p.pronargs = 0\n"
        "    THEN CAST('*' AS pg_catalog.text)\n"
        "    ELSE\n"
        "    pg_catalog.array_to_string(ARRAY(\n"
        "      SELECT\n"
        "        pg_catalog.format_type(p.proargtypes[s.i], NULL)\n"
        "      FROM\n"
        "        pg_catalog.generate_series(0, pg_catalog.array_upper(p.proargtypes, 1)) AS s(i)\n"
        "    ), ', ')\n"
        "  END AS \"%s\",\n",
        gettext_noop("Argument data types"));
 else
  appendPQExpBuffer(&buf,
        "  pg_catalog.format_type(p.proargtypes[0], NULL) AS \"%s\",\n",
        gettext_noop("Argument data types"));

 if (pset.sversion >= 110000)
  appendPQExpBuffer(&buf,
        "  pg_catalog.obj_description(p.oid, 'pg_proc') as \"%s\"\n"
        "FROM pg_catalog.pg_proc p\n"
        "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\n"
        "WHERE p.prokind = 'a'\n",
        gettext_noop("Description"));
 else
  appendPQExpBuffer(&buf,
        "  pg_catalog.obj_description(p.oid, 'pg_proc') as \"%s\"\n"
        "FROM pg_catalog.pg_proc p\n"
        "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\n"
        "WHERE p.proisagg\n",
        gettext_noop("Description"));

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "      AND n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "n.nspname", "p.proname", ((void*)0),
        "pg_catalog.pg_function_is_visible(p.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2, 4;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of aggregate functions");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
