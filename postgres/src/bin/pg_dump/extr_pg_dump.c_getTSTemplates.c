
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
struct TYPE_19__ {int dump; int namespace; int name; TYPE_1__ catId; int objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {TYPE_5__ dobj; void* tmpllexize; void* tmplinit; } ;
typedef TYPE_2__ TSTemplateInfo ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_TSTEMPLATE ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 void* atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int findNamespace (TYPE_4__*,void*) ;
 scalar_t__ pg_malloc (int) ;
 int pg_strdup (int ) ;
 int selectDumpableObject (TYPE_5__*,TYPE_4__*) ;

TSTemplateInfo *
getTSTemplates(Archive *fout, int *numTSTemplates)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 TSTemplateInfo *tmplinfo;
 int i_tableoid;
 int i_oid;
 int i_tmplname;
 int i_tmplnamespace;
 int i_tmplinit;
 int i_tmpllexize;


 if (fout->remoteVersion < 80300)
 {
  *numTSTemplates = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();

 appendPQExpBufferStr(query, "SELECT tableoid, oid, tmplname, "
       "tmplnamespace, tmplinit::oid, tmpllexize::oid "
       "FROM pg_ts_template");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numTSTemplates = ntups;

 tmplinfo = (TSTemplateInfo *) pg_malloc(ntups * sizeof(TSTemplateInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_tmplname = PQfnumber(res, "tmplname");
 i_tmplnamespace = PQfnumber(res, "tmplnamespace");
 i_tmplinit = PQfnumber(res, "tmplinit");
 i_tmpllexize = PQfnumber(res, "tmpllexize");

 for (i = 0; i < ntups; i++)
 {
  tmplinfo[i].dobj.objType = DO_TSTEMPLATE;
  tmplinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  tmplinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&tmplinfo[i].dobj);
  tmplinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_tmplname));
  tmplinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_tmplnamespace)));
  tmplinfo[i].tmplinit = atooid(PQgetvalue(res, i, i_tmplinit));
  tmplinfo[i].tmpllexize = atooid(PQgetvalue(res, i, i_tmpllexize));


  selectDumpableObject(&(tmplinfo[i].dobj), fout);


  tmplinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return tmplinfo;
}
