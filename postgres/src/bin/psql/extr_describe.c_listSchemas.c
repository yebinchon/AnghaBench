
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listSchemas(const char *pattern, bool verbose, bool showSystem)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT n.nspname AS \"%s\",\n"
       "  pg_catalog.pg_get_userbyid(n.nspowner) AS \"%s\"",
       gettext_noop("Name"),
       gettext_noop("Owner"));

 if (verbose)
 {
  appendPQExpBufferStr(&buf, ",\n  ");
  printACLColumn(&buf, "n.nspacl");
  appendPQExpBuffer(&buf,
        ",\n  pg_catalog.obj_description(n.oid, 'pg_namespace') AS \"%s\"",
        gettext_noop("Description"));
 }

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_namespace n\n");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf,
        "WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema'\n");

 processSQLNamePattern(pset.db, &buf, pattern,
        !showSystem && !pattern, 0,
        ((void*)0), "n.nspname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of schemas");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
