
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_10__ {int logfile; int queryFout; TYPE_1__ popt; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,char const*,...) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static bool
listOneExtensionContents(const char *extname, const char *oid)
{
 PQExpBufferData buf;
 PGresult *res;
 PQExpBufferData title;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT pg_catalog.pg_describe_object(classid, objid, 0) AS \"%s\"\n"
       "FROM pg_catalog.pg_depend\n"
       "WHERE refclassid = 'pg_catalog.pg_extension'::pg_catalog.regclass AND refobjid = '%s' AND deptype = 'e'\n"
       "ORDER BY 1;",
       gettext_noop("Object description"),
       oid);

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 initPQExpBuffer(&title);
 printfPQExpBuffer(&title, _("Objects in extension \"%s\""), extname);
 myopt.title = title.data;
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 termPQExpBuffer(&title);
 PQclear(res);
 return 1;
}
