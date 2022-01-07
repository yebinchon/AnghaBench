
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int translate_header; int const* translate_columns; int n_translate_columns; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int COERCION_CODE_ASSIGNMENT ;
 int COERCION_CODE_EXPLICIT ;
 int COERCION_METHOD_BINARY ;
 int COERCION_METHOD_INOUT ;
 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int lengthof (int const*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,char*,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listCasts(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {0, 0, 0, 1, 0};

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT pg_catalog.format_type(castsource, NULL) AS \"%s\",\n"
       "       pg_catalog.format_type(casttarget, NULL) AS \"%s\",\n",
       gettext_noop("Source type"),
       gettext_noop("Target type"));






 if (pset.sversion >= 80400)
  appendPQExpBuffer(&buf,
        "       CASE WHEN c.castmethod = '%c' THEN '(binary coercible)'\n"
        "            WHEN c.castmethod = '%c' THEN '(with inout)'\n"
        "            ELSE p.proname\n"
        "       END AS \"%s\",\n",
        COERCION_METHOD_BINARY,
        COERCION_METHOD_INOUT,
        gettext_noop("Function"));
 else
  appendPQExpBuffer(&buf,
        "       CASE WHEN c.castfunc = 0 THEN '(binary coercible)'\n"
        "            ELSE p.proname\n"
        "       END AS \"%s\",\n",
        gettext_noop("Function"));

 appendPQExpBuffer(&buf,
       "       CASE WHEN c.castcontext = '%c' THEN '%s'\n"
       "            WHEN c.castcontext = '%c' THEN '%s'\n"
       "            ELSE '%s'\n"
       "       END AS \"%s\"",
       COERCION_CODE_EXPLICIT,
       gettext_noop("no"),
       COERCION_CODE_ASSIGNMENT,
       gettext_noop("in assignment"),
       gettext_noop("yes"),
       gettext_noop("Implicit?"));

 if (verbose)
  appendPQExpBuffer(&buf,
        ",\n       d.description AS \"%s\"",
        gettext_noop("Description"));





 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_cast c LEFT JOIN pg_catalog.pg_proc p\n"
       "     ON c.castfunc = p.oid\n"
       "     LEFT JOIN pg_catalog.pg_type ts\n"
       "     ON c.castsource = ts.oid\n"
       "     LEFT JOIN pg_catalog.pg_namespace ns\n"
       "     ON ns.oid = ts.typnamespace\n"
       "     LEFT JOIN pg_catalog.pg_type tt\n"
       "     ON c.casttarget = tt.oid\n"
       "     LEFT JOIN pg_catalog.pg_namespace nt\n"
       "     ON nt.oid = tt.typnamespace\n");

 if (verbose)
  appendPQExpBufferStr(&buf,
        "     LEFT JOIN pg_catalog.pg_description d\n"
        "     ON d.classoid = c.tableoid AND d.objoid = "
        "c.oid AND d.objsubid = 0\n");

 appendPQExpBufferStr(&buf, "WHERE ( (true");





 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "ns.nspname", "ts.typname",
        "pg_catalog.format_type(ts.oid, NULL)",
        "pg_catalog.pg_type_is_visible(ts.oid)");

 appendPQExpBufferStr(&buf, ") OR (true");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "nt.nspname", "tt.typname",
        "pg_catalog.format_type(tt.oid, NULL)",
        "pg_catalog.pg_type_is_visible(tt.oid)");

 appendPQExpBufferStr(&buf, ") )\nORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of casts");
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
