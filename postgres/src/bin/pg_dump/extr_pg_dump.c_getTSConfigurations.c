
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_19__ {int dump; int namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {TYPE_5__ dobj; void* cfgparser; void* rolname; } ;
typedef TYPE_2__ TSConfigInfo ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_TSCONFIG ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_3__*,char*,int ) ;
 void* atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int findNamespace (TYPE_4__*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_5__*,TYPE_4__*) ;
 int username_subquery ;

TSConfigInfo *
getTSConfigurations(Archive *fout, int *numTSConfigs)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 TSConfigInfo *cfginfo;
 int i_tableoid;
 int i_oid;
 int i_cfgname;
 int i_cfgnamespace;
 int i_rolname;
 int i_cfgparser;


 if (fout->remoteVersion < 80300)
 {
  *numTSConfigs = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();

 appendPQExpBuffer(query, "SELECT tableoid, oid, cfgname, "
       "cfgnamespace, (%s cfgowner) AS rolname, cfgparser "
       "FROM pg_ts_config",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numTSConfigs = ntups;

 cfginfo = (TSConfigInfo *) pg_malloc(ntups * sizeof(TSConfigInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_cfgname = PQfnumber(res, "cfgname");
 i_cfgnamespace = PQfnumber(res, "cfgnamespace");
 i_rolname = PQfnumber(res, "rolname");
 i_cfgparser = PQfnumber(res, "cfgparser");

 for (i = 0; i < ntups; i++)
 {
  cfginfo[i].dobj.objType = DO_TSCONFIG;
  cfginfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  cfginfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&cfginfo[i].dobj);
  cfginfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_cfgname));
  cfginfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_cfgnamespace)));
  cfginfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));
  cfginfo[i].cfgparser = atooid(PQgetvalue(res, i, i_cfgparser));


  selectDumpableObject(&(cfginfo[i].dobj), fout);


  cfginfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return cfginfo;
}
