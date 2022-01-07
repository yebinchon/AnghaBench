
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int translate_header; int const* translate_columns; int n_translate_columns; int title; int * nullPrint; } ;
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
 int lengthof (int const*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listConversions(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] =
 {0, 0, 0, 0, 1, 0};

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT n.nspname AS \"%s\",\n"
       "       c.conname AS \"%s\",\n"
       "       pg_catalog.pg_encoding_to_char(c.conforencoding) AS \"%s\",\n"
       "       pg_catalog.pg_encoding_to_char(c.contoencoding) AS \"%s\",\n"
       "       CASE WHEN c.condefault THEN '%s'\n"
       "       ELSE '%s' END AS \"%s\"",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Source"),
       gettext_noop("Destination"),
       gettext_noop("yes"), gettext_noop("no"),
       gettext_noop("Default?"));

 if (verbose)
  appendPQExpBuffer(&buf,
        ",\n       d.description AS \"%s\"",
        gettext_noop("Description"));

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_conversion c\n"
       "     JOIN pg_catalog.pg_namespace n "
       "ON n.oid = c.connamespace\n");

 if (verbose)
  appendPQExpBufferStr(&buf,
        "LEFT JOIN pg_catalog.pg_description d "
        "ON d.classoid = c.tableoid\n"
        "          AND d.objoid = c.oid "
        "AND d.objsubid = 0\n");

 appendPQExpBufferStr(&buf, "WHERE true\n");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "  AND n.nspname <> 'pg_catalog'\n"
        "  AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "n.nspname", "c.conname", ((void*)0),
        "pg_catalog.pg_conversion_is_visible(c.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of conversions");
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
