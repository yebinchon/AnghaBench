
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int name; } ;
struct TYPE_23__ {TYPE_2__ dobj; } ;
typedef TYPE_3__ TypeInfo ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_28__ {int name; TYPE_1__ catId; int objType; } ;
struct TYPE_24__ {TYPE_8__ dobj; void* trflang; void* trftype; void* trftosql; void* trffromsql; } ;
typedef TYPE_4__ TransformInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_26__ {int data; } ;
struct TYPE_25__ {int data; } ;
typedef TYPE_5__ PQExpBufferData ;
typedef TYPE_6__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_7__ Archive ;


 int AssignDumpId (TYPE_8__*) ;
 int DO_TRANSFORM ;
 int * ExecuteSqlQuery (TYPE_7__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_5__*,char*,int ,char*) ;
 int appendPQExpBufferStr (TYPE_6__*,char*) ;
 void* atooid (int ) ;
 TYPE_6__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_6__*) ;
 TYPE_3__* findTypeByOid (void*) ;
 int free (char*) ;
 char* get_language_name (TYPE_7__*,void*) ;
 int initPQExpBuffer (TYPE_5__*) ;
 scalar_t__ pg_malloc (int) ;
 int selectDumpableObject (TYPE_8__*,TYPE_7__*) ;

TransformInfo *
getTransforms(Archive *fout, int *numTransforms)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 TransformInfo *transforminfo;
 int i_tableoid;
 int i_oid;
 int i_trftype;
 int i_trflang;
 int i_trffromsql;
 int i_trftosql;


 if (fout->remoteVersion < 90500)
 {
  *numTransforms = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();

 appendPQExpBufferStr(query, "SELECT tableoid, oid, "
       "trftype, trflang, trffromsql::oid, trftosql::oid "
       "FROM pg_transform "
       "ORDER BY 3,4");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 *numTransforms = ntups;

 transforminfo = (TransformInfo *) pg_malloc(ntups * sizeof(TransformInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_trftype = PQfnumber(res, "trftype");
 i_trflang = PQfnumber(res, "trflang");
 i_trffromsql = PQfnumber(res, "trffromsql");
 i_trftosql = PQfnumber(res, "trftosql");

 for (i = 0; i < ntups; i++)
 {
  PQExpBufferData namebuf;
  TypeInfo *typeInfo;
  char *lanname;

  transforminfo[i].dobj.objType = DO_TRANSFORM;
  transforminfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  transforminfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&transforminfo[i].dobj);
  transforminfo[i].trftype = atooid(PQgetvalue(res, i, i_trftype));
  transforminfo[i].trflang = atooid(PQgetvalue(res, i, i_trflang));
  transforminfo[i].trffromsql = atooid(PQgetvalue(res, i, i_trffromsql));
  transforminfo[i].trftosql = atooid(PQgetvalue(res, i, i_trftosql));






  initPQExpBuffer(&namebuf);
  typeInfo = findTypeByOid(transforminfo[i].trftype);
  lanname = get_language_name(fout, transforminfo[i].trflang);
  if (typeInfo && lanname)
   appendPQExpBuffer(&namebuf, "%s %s",
         typeInfo->dobj.name, lanname);
  transforminfo[i].dobj.name = namebuf.data;
  free(lanname);


  selectDumpableObject(&(transforminfo[i].dobj), fout);
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return transforminfo;
}
