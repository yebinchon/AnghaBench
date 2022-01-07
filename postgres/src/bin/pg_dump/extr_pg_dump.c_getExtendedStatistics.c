
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {void* oid; void* tableoid; } ;
struct TYPE_18__ {int dump; int namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_17__ {int remoteVersion; } ;
struct TYPE_16__ {int data; } ;
struct TYPE_15__ {TYPE_5__ dobj; int stattarget; void* rolname; } ;
typedef TYPE_2__ StatsExtInfo ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_STATSEXT ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_3__*,char*,int ) ;
 int atoi (int ) ;
 void* atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int findNamespace (TYPE_4__*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_5__*,TYPE_4__*) ;
 int username_subquery ;

void
getExtendedStatistics(Archive *fout)
{
 PQExpBuffer query;
 PGresult *res;
 StatsExtInfo *statsextinfo;
 int ntups;
 int i_tableoid;
 int i_oid;
 int i_stxname;
 int i_stxnamespace;
 int i_rolname;
 int i_stattarget;
 int i;


 if (fout->remoteVersion < 100000)
  return;

 query = createPQExpBuffer();

 if (fout->remoteVersion < 130000)
  appendPQExpBuffer(query, "SELECT tableoid, oid, stxname, "
        "stxnamespace, (%s stxowner) AS rolname, (-1) AS stxstattarget "
        "FROM pg_catalog.pg_statistic_ext",
        username_subquery);
 else
  appendPQExpBuffer(query, "SELECT tableoid, oid, stxname, "
        "stxnamespace, (%s stxowner) AS rolname, stxstattarget "
        "FROM pg_catalog.pg_statistic_ext",
        username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_stxname = PQfnumber(res, "stxname");
 i_stxnamespace = PQfnumber(res, "stxnamespace");
 i_rolname = PQfnumber(res, "rolname");
 i_stattarget = PQfnumber(res, "stxstattarget");

 statsextinfo = (StatsExtInfo *) pg_malloc(ntups * sizeof(StatsExtInfo));

 for (i = 0; i < ntups; i++)
 {
  statsextinfo[i].dobj.objType = DO_STATSEXT;
  statsextinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  statsextinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&statsextinfo[i].dobj);
  statsextinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_stxname));
  statsextinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_stxnamespace)));
  statsextinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));
  statsextinfo[i].stattarget = atoi(PQgetvalue(res, i, i_stattarget));


  selectDumpableObject(&(statsextinfo[i].dobj), fout);


  statsextinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);
 destroyPQExpBuffer(query);
}
