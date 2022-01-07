
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct TYPE_22__ {int name; } ;
struct TYPE_23__ {TYPE_2__ dobj; } ;
typedef TYPE_3__ TypeInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {int dump; int name; TYPE_1__ catId; int objType; } ;
struct TYPE_26__ {TYPE_19__ dobj; void* casttarget; void* castsource; void* castmethod; void* castcontext; void* castfunc; } ;
struct TYPE_25__ {int data; } ;
struct TYPE_24__ {int data; } ;
typedef TYPE_4__ PQExpBufferData ;
typedef TYPE_5__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_6__ CastInfo ;
typedef TYPE_7__ Archive ;


 int AssignDumpId (TYPE_19__*) ;
 int DO_CAST ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_7__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 void** PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_4__*,char*,int ,int ) ;
 int appendPQExpBufferStr (TYPE_5__*,char*) ;
 void* atooid (void**) ;
 TYPE_5__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_5__*) ;
 TYPE_3__* findTypeByOid (void*) ;
 int initPQExpBuffer (TYPE_4__*) ;
 scalar_t__ pg_malloc (int) ;
 int selectDumpableCast (TYPE_6__*,TYPE_7__*) ;

CastInfo *
getCasts(Archive *fout, int *numCasts)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query = createPQExpBuffer();
 CastInfo *castinfo;
 int i_tableoid;
 int i_oid;
 int i_castsource;
 int i_casttarget;
 int i_castfunc;
 int i_castcontext;
 int i_castmethod;

 if (fout->remoteVersion >= 80400)
 {
  appendPQExpBufferStr(query, "SELECT tableoid, oid, "
        "castsource, casttarget, castfunc, castcontext, "
        "castmethod "
        "FROM pg_cast ORDER BY 3,4");
 }
 else
 {
  appendPQExpBufferStr(query, "SELECT tableoid, oid, "
        "castsource, casttarget, castfunc, castcontext, "
        "CASE WHEN castfunc = 0 THEN 'b' ELSE 'f' END AS castmethod "
        "FROM pg_cast ORDER BY 3,4");
 }

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 *numCasts = ntups;

 castinfo = (CastInfo *) pg_malloc(ntups * sizeof(CastInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_castsource = PQfnumber(res, "castsource");
 i_casttarget = PQfnumber(res, "casttarget");
 i_castfunc = PQfnumber(res, "castfunc");
 i_castcontext = PQfnumber(res, "castcontext");
 i_castmethod = PQfnumber(res, "castmethod");

 for (i = 0; i < ntups; i++)
 {
  PQExpBufferData namebuf;
  TypeInfo *sTypeInfo;
  TypeInfo *tTypeInfo;

  castinfo[i].dobj.objType = DO_CAST;
  castinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  castinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&castinfo[i].dobj);
  castinfo[i].castsource = atooid(PQgetvalue(res, i, i_castsource));
  castinfo[i].casttarget = atooid(PQgetvalue(res, i, i_casttarget));
  castinfo[i].castfunc = atooid(PQgetvalue(res, i, i_castfunc));
  castinfo[i].castcontext = *(PQgetvalue(res, i, i_castcontext));
  castinfo[i].castmethod = *(PQgetvalue(res, i, i_castmethod));






  initPQExpBuffer(&namebuf);
  sTypeInfo = findTypeByOid(castinfo[i].castsource);
  tTypeInfo = findTypeByOid(castinfo[i].casttarget);
  if (sTypeInfo && tTypeInfo)
   appendPQExpBuffer(&namebuf, "%s %s",
         sTypeInfo->dobj.name, tTypeInfo->dobj.name);
  castinfo[i].dobj.name = namebuf.data;


  selectDumpableCast(&(castinfo[i]), fout);


  castinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return castinfo;
}
