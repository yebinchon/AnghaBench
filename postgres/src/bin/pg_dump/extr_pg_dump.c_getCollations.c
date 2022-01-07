
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
struct TYPE_17__ {TYPE_5__ dobj; void* rolname; } ;
struct TYPE_16__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ CollInfo ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_COLLATION ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 void* atooid (int ) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int findNamespace (TYPE_4__*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_5__*,TYPE_4__*) ;
 int username_subquery ;

CollInfo *
getCollations(Archive *fout, int *numCollations)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 CollInfo *collinfo;
 int i_tableoid;
 int i_oid;
 int i_collname;
 int i_collnamespace;
 int i_rolname;


 if (fout->remoteVersion < 90100)
 {
  *numCollations = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();






 appendPQExpBuffer(query, "SELECT tableoid, oid, collname, "
       "collnamespace, "
       "(%s collowner) AS rolname "
       "FROM pg_collation",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numCollations = ntups;

 collinfo = (CollInfo *) pg_malloc(ntups * sizeof(CollInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_collname = PQfnumber(res, "collname");
 i_collnamespace = PQfnumber(res, "collnamespace");
 i_rolname = PQfnumber(res, "rolname");

 for (i = 0; i < ntups; i++)
 {
  collinfo[i].dobj.objType = DO_COLLATION;
  collinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  collinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&collinfo[i].dobj);
  collinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_collname));
  collinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_collnamespace)));
  collinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));


  selectDumpableObject(&(collinfo[i].dobj), fout);


  collinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return collinfo;
}
