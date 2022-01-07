
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tuples_only; } ;
struct TYPE_6__ {int translate_header; int title; int * nullPrint; TYPE_1__ topt; } ;
typedef TYPE_2__ printQueryOpt ;
typedef int buf ;
struct TYPE_7__ {int sversion; int logfile; int queryFout; TYPE_2__ popt; } ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (char*) ;
 int _ (char*) ;
 char* gettext_noop (char*) ;
 int printQuery (int *,TYPE_2__*,int ,int,int ) ;
 TYPE_3__ pset ;
 int snprintf (char*,int,char*,char*,char*,...) ;

bool
do_lo_list(void)
{
 PGresult *res;
 char buf[1024];
 printQueryOpt myopt = pset.popt;

 if (pset.sversion >= 90000)
 {
  snprintf(buf, sizeof(buf),
     "SELECT oid as \"%s\",\n"
     "  pg_catalog.pg_get_userbyid(lomowner) as \"%s\",\n"
     "  pg_catalog.obj_description(oid, 'pg_largeobject') as \"%s\"\n"
     "  FROM pg_catalog.pg_largeobject_metadata "
     "  ORDER BY oid",
     gettext_noop("ID"),
     gettext_noop("Owner"),
     gettext_noop("Description"));
 }
 else
 {
  snprintf(buf, sizeof(buf),
     "SELECT loid as \"%s\",\n"
     "  pg_catalog.obj_description(loid, 'pg_largeobject') as \"%s\"\n"
     "FROM (SELECT DISTINCT loid FROM pg_catalog.pg_largeobject) x\n"
     "ORDER BY 1",
     gettext_noop("ID"),
     gettext_noop("Description"));
 }

 res = PSQLexec(buf);
 if (!res)
  return 0;

 myopt.topt.tuples_only = 0;
 myopt.nullPrint = ((void*)0);
 myopt.title = _("Large objects");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
