
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
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listDomains(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT n.nspname as \"%s\",\n"
       "       t.typname as \"%s\",\n"
       "       pg_catalog.format_type(t.typbasetype, t.typtypmod) as \"%s\",\n",
       gettext_noop("Schema"),
       gettext_noop("Name"),
       gettext_noop("Type"));

 if (pset.sversion >= 90100)
  appendPQExpBuffer(&buf,
        "       (SELECT c.collname FROM pg_catalog.pg_collation c, pg_catalog.pg_type bt\n"
        "        WHERE c.oid = t.typcollation AND bt.oid = t.typbasetype AND t.typcollation <> bt.typcollation) as \"%s\",\n",
        gettext_noop("Collation"));
 appendPQExpBuffer(&buf,
       "       CASE WHEN t.typnotnull THEN 'not null' END as \"%s\",\n"
       "       t.typdefault as \"%s\",\n"
       "       pg_catalog.array_to_string(ARRAY(\n"
       "         SELECT pg_catalog.pg_get_constraintdef(r.oid, true) FROM pg_catalog.pg_constraint r WHERE t.oid = r.contypid\n"
       "       ), ' ') as \"%s\"",
       gettext_noop("Nullable"),
       gettext_noop("Default"),
       gettext_noop("Check"));

 if (verbose)
 {
  if (pset.sversion >= 90200)
  {
   appendPQExpBufferStr(&buf, ",\n  ");
   printACLColumn(&buf, "t.typacl");
  }
  appendPQExpBuffer(&buf,
        ",\n       d.description as \"%s\"",
        gettext_noop("Description"));
 }

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_type t\n"
       "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace\n");

 if (verbose)
  appendPQExpBufferStr(&buf,
        "     LEFT JOIN pg_catalog.pg_description d "
        "ON d.classoid = t.tableoid AND d.objoid = t.oid "
        "AND d.objsubid = 0\n");

 appendPQExpBufferStr(&buf, "WHERE t.typtype = 'd'\n");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "      AND n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern, 1, 0,
        "n.nspname", "t.typname", ((void*)0),
        "pg_catalog.pg_type_is_visible(t.oid)");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of domains");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
