
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
 int appendPQExpBuffer (TYPE_2__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int lengthof (int const*) ;
 int pg_log_error (char*,int ) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listCollations(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {0, 0, 0, 0, 0, 1, 0};

 if (pset.sversion < 90100)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support collations.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT n.nspname AS \"%s\",\n"
       "       c.collname AS \"%s\",\n"
       "       c.collcollate AS \"%s\",\n"
       "       c.collctype AS \"%s\"",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Collate"),
       gettext_noop("Ctype"));

 if (pset.sversion >= 100000)
  appendPQExpBuffer(&buf,
        ",\n       CASE c.collprovider WHEN 'd' THEN 'default' WHEN 'c' THEN 'libc' WHEN 'i' THEN 'icu' END AS \"%s\"",
        gettext_noop("Provider"));
 else
  appendPQExpBuffer(&buf,
        ",\n       'libc' AS \"%s\"",
        gettext_noop("Provider"));

 if (pset.sversion >= 120000)
  appendPQExpBuffer(&buf,
        ",\n       CASE WHEN c.collisdeterministic THEN '%s' ELSE '%s' END AS \"%s\"",
        gettext_noop("yes"), gettext_noop("no"),
        gettext_noop("Deterministic?"));
 else
  appendPQExpBuffer(&buf,
        ",\n       '%s' AS \"%s\"",
        gettext_noop("yes"),
        gettext_noop("Deterministic?"));

 if (verbose)
  appendPQExpBuffer(&buf,
        ",\n       pg_catalog.obj_description(c.oid, 'pg_collation') AS \"%s\"",
        gettext_noop("Description"));

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_collation c, pg_catalog.pg_namespace n\n"
       "WHERE n.oid = c.collnamespace\n");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "      AND n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");







 appendPQExpBufferStr(&buf, "      AND c.collencoding IN (-1, pg_catalog.pg_char_to_encoding(pg_catalog.getdatabaseencoding()))\n");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "n.nspname", "c.collname", ((void*)0),
        "pg_catalog.pg_collation_is_visible(c.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of collations");
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
