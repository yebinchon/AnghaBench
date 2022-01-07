
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_11__ {int translate_header; int title; int * nullPrint; } ;
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
 int pg_log_error (char*,int ) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listForeignTables(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 if (pset.sversion < 90100)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support foreign tables.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT n.nspname AS \"%s\",\n"
       "  c.relname AS \"%s\",\n"
       "  s.srvname AS \"%s\"",
       gettext_noop("Schema"),
       gettext_noop("Table"),
       gettext_noop("Server"));

 if (verbose)
  appendPQExpBuffer(&buf,
        ",\n CASE WHEN ftoptions IS NULL THEN '' ELSE "
        "  '(' || pg_catalog.array_to_string(ARRAY(SELECT "
        "  pg_catalog.quote_ident(option_name) ||  ' ' || "
        "  pg_catalog.quote_literal(option_value)  FROM "
        "  pg_catalog.pg_options_to_table(ftoptions)),  ', ') || ')' "
        "  END AS \"%s\",\n"
        "  d.description AS \"%s\"",
        gettext_noop("FDW options"),
        gettext_noop("Description"));

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_foreign_table ft\n"
       "  INNER JOIN pg_catalog.pg_class c"
       " ON c.oid = ft.ftrelid\n"
       "  INNER JOIN pg_catalog.pg_namespace n"
       " ON n.oid = c.relnamespace\n"
       "  INNER JOIN pg_catalog.pg_foreign_server s"
       " ON s.oid = ft.ftserver\n");
 if (verbose)
  appendPQExpBufferStr(&buf,
        "   LEFT JOIN pg_catalog.pg_description d\n"
        "          ON d.classoid = c.tableoid AND "
        "d.objoid = c.oid AND d.objsubid = 0\n");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        "n.nspname", "c.relname", ((void*)0),
        "pg_catalog.pg_table_is_visible(c.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of foreign tables");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
