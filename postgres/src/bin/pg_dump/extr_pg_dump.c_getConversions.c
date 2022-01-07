
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {int dump; int namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_12__ {TYPE_4__ dobj; void* rolname; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ ConvInfo ;
typedef int Archive ;


 int AssignDumpId (TYPE_4__*) ;
 int DO_CONVERSION ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 void* atooid (int ) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int findNamespace (int *,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_4__*,int *) ;
 int username_subquery ;

ConvInfo *
getConversions(Archive *fout, int *numConversions)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 ConvInfo *convinfo;
 int i_tableoid;
 int i_oid;
 int i_conname;
 int i_connamespace;
 int i_rolname;

 query = createPQExpBuffer();






 appendPQExpBuffer(query, "SELECT tableoid, oid, conname, "
       "connamespace, "
       "(%s conowner) AS rolname "
       "FROM pg_conversion",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numConversions = ntups;

 convinfo = (ConvInfo *) pg_malloc(ntups * sizeof(ConvInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_conname = PQfnumber(res, "conname");
 i_connamespace = PQfnumber(res, "connamespace");
 i_rolname = PQfnumber(res, "rolname");

 for (i = 0; i < ntups; i++)
 {
  convinfo[i].dobj.objType = DO_CONVERSION;
  convinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  convinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&convinfo[i].dobj);
  convinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_conname));
  convinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_connamespace)));
  convinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));


  selectDumpableObject(&(convinfo[i].dobj), fout);


  convinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return convinfo;
}
