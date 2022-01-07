
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_14__ {int dump; int * namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_18__ {TYPE_13__ dobj; int amtype; void* amhandler; } ;
struct TYPE_17__ {int remoteVersion; } ;
struct TYPE_16__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ Archive ;
typedef TYPE_4__ AccessMethodInfo ;


 int AssignDumpId (TYPE_13__*) ;
 int DO_ACCESS_METHOD ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_3__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int * PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 void* atooid (int *) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int *) ;
 int selectDumpableAccessMethod (TYPE_4__*,TYPE_3__*) ;

AccessMethodInfo *
getAccessMethods(Archive *fout, int *numAccessMethods)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 AccessMethodInfo *aminfo;
 int i_tableoid;
 int i_oid;
 int i_amname;
 int i_amhandler;
 int i_amtype;


 if (fout->remoteVersion < 90600)
 {
  *numAccessMethods = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();


 appendPQExpBufferStr(query, "SELECT tableoid, oid, amname, amtype, "
       "amhandler::pg_catalog.regproc AS amhandler "
       "FROM pg_am");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numAccessMethods = ntups;

 aminfo = (AccessMethodInfo *) pg_malloc(ntups * sizeof(AccessMethodInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_amname = PQfnumber(res, "amname");
 i_amhandler = PQfnumber(res, "amhandler");
 i_amtype = PQfnumber(res, "amtype");

 for (i = 0; i < ntups; i++)
 {
  aminfo[i].dobj.objType = DO_ACCESS_METHOD;
  aminfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  aminfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&aminfo[i].dobj);
  aminfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_amname));
  aminfo[i].dobj.namespace = ((void*)0);
  aminfo[i].amhandler = pg_strdup(PQgetvalue(res, i, i_amhandler));
  aminfo[i].amtype = *(PQgetvalue(res, i, i_amtype));


  selectDumpableAccessMethod(&(aminfo[i]), fout);


  aminfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return aminfo;
}
