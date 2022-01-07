
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
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listAllDbs(const char *pattern, bool verbose)
{
 PGresult *res;
 PQExpBufferData buf;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT d.datname as \"%s\",\n"
       "       pg_catalog.pg_get_userbyid(d.datdba) as \"%s\",\n"
       "       pg_catalog.pg_encoding_to_char(d.encoding) as \"%s\",\n",
       gettext_noop("Name"),
       gettext_noop("Owner"),
       gettext_noop("Encoding"));
 if (pset.sversion >= 80400)
  appendPQExpBuffer(&buf,
        "       d.datcollate as \"%s\",\n"
        "       d.datctype as \"%s\",\n",
        gettext_noop("Collate"),
        gettext_noop("Ctype"));
 appendPQExpBufferStr(&buf, "       ");
 printACLColumn(&buf, "d.datacl");
 if (verbose && pset.sversion >= 80200)
  appendPQExpBuffer(&buf,
        ",\n       CASE WHEN pg_catalog.has_database_privilege(d.datname, 'CONNECT')\n"
        "            THEN pg_catalog.pg_size_pretty(pg_catalog.pg_database_size(d.datname))\n"
        "            ELSE 'No Access'\n"
        "       END as \"%s\"",
        gettext_noop("Size"));
 if (verbose && pset.sversion >= 80000)
  appendPQExpBuffer(&buf,
        ",\n       t.spcname as \"%s\"",
        gettext_noop("Tablespace"));
 if (verbose && pset.sversion >= 80200)
  appendPQExpBuffer(&buf,
        ",\n       pg_catalog.shobj_description(d.oid, 'pg_database') as \"%s\"",
        gettext_noop("Description"));
 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_database d\n");
 if (verbose && pset.sversion >= 80000)
  appendPQExpBufferStr(&buf,
        "  JOIN pg_catalog.pg_tablespace t on d.dattablespace = t.oid\n");

 if (pattern)
  processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
         ((void*)0), "d.datname", ((void*)0), ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");
 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of databases");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
