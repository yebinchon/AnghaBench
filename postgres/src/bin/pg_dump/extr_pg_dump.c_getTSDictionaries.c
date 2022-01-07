
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
struct TYPE_16__ {TYPE_5__ dobj; int * dictinitoption; void* dicttemplate; void* rolname; } ;
typedef TYPE_2__ TSDictInfo ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_TSDICT ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
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

TSDictInfo *
getTSDictionaries(Archive *fout, int *numTSDicts)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 TSDictInfo *dictinfo;
 int i_tableoid;
 int i_oid;
 int i_dictname;
 int i_dictnamespace;
 int i_rolname;
 int i_dicttemplate;
 int i_dictinitoption;


 if (fout->remoteVersion < 80300)
 {
  *numTSDicts = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();

 appendPQExpBuffer(query, "SELECT tableoid, oid, dictname, "
       "dictnamespace, (%s dictowner) AS rolname, "
       "dicttemplate, dictinitoption "
       "FROM pg_ts_dict",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numTSDicts = ntups;

 dictinfo = (TSDictInfo *) pg_malloc(ntups * sizeof(TSDictInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_dictname = PQfnumber(res, "dictname");
 i_dictnamespace = PQfnumber(res, "dictnamespace");
 i_rolname = PQfnumber(res, "rolname");
 i_dictinitoption = PQfnumber(res, "dictinitoption");
 i_dicttemplate = PQfnumber(res, "dicttemplate");

 for (i = 0; i < ntups; i++)
 {
  dictinfo[i].dobj.objType = DO_TSDICT;
  dictinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  dictinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&dictinfo[i].dobj);
  dictinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_dictname));
  dictinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_dictnamespace)));
  dictinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));
  dictinfo[i].dicttemplate = atooid(PQgetvalue(res, i, i_dicttemplate));
  if (PQgetisnull(res, i, i_dictinitoption))
   dictinfo[i].dictinitoption = ((void*)0);
  else
   dictinfo[i].dictinitoption = pg_strdup(PQgetvalue(res, i, i_dictinitoption));


  selectDumpableObject(&(dictinfo[i].dobj), fout);


  dictinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return dictinfo;
}
