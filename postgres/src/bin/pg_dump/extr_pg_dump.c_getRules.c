
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_14__ {int dumpId; int dump; int namespace; TYPE_1__ catId; int name; int objType; } ;
struct TYPE_19__ {scalar_t__ relkind; TYPE_11__ dobj; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {char ev_type; int is_instead; char ev_enabled; int separate; TYPE_7__* ruletable; TYPE_11__ dobj; } ;
typedef TYPE_2__ RuleInfo ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef void* Oid ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_11__*) ;
 int DO_RULE ;
 int * ExecuteSqlQuery (TYPE_4__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_VIEW ;
 int addObjectDependency (TYPE_11__*,int ) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 void* atooid (char*) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int fatal (char*,void*,void*) ;
 TYPE_7__* findTableByOid (void*) ;
 scalar_t__ pg_malloc (int) ;
 int pg_strdup (char*) ;

RuleInfo *
getRules(Archive *fout, int *numRules)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query = createPQExpBuffer();
 RuleInfo *ruleinfo;
 int i_tableoid;
 int i_oid;
 int i_rulename;
 int i_ruletable;
 int i_ev_type;
 int i_is_instead;
 int i_ev_enabled;

 if (fout->remoteVersion >= 80300)
 {
  appendPQExpBufferStr(query, "SELECT "
        "tableoid, oid, rulename, "
        "ev_class AS ruletable, ev_type, is_instead, "
        "ev_enabled "
        "FROM pg_rewrite "
        "ORDER BY oid");
 }
 else
 {
  appendPQExpBufferStr(query, "SELECT "
        "tableoid, oid, rulename, "
        "ev_class AS ruletable, ev_type, is_instead, "
        "'O'::char AS ev_enabled "
        "FROM pg_rewrite "
        "ORDER BY oid");
 }

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 *numRules = ntups;

 ruleinfo = (RuleInfo *) pg_malloc(ntups * sizeof(RuleInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_rulename = PQfnumber(res, "rulename");
 i_ruletable = PQfnumber(res, "ruletable");
 i_ev_type = PQfnumber(res, "ev_type");
 i_is_instead = PQfnumber(res, "is_instead");
 i_ev_enabled = PQfnumber(res, "ev_enabled");

 for (i = 0; i < ntups; i++)
 {
  Oid ruletableoid;

  ruleinfo[i].dobj.objType = DO_RULE;
  ruleinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  ruleinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&ruleinfo[i].dobj);
  ruleinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_rulename));
  ruletableoid = atooid(PQgetvalue(res, i, i_ruletable));
  ruleinfo[i].ruletable = findTableByOid(ruletableoid);
  if (ruleinfo[i].ruletable == ((void*)0))
   fatal("failed sanity check, parent table with OID %u of pg_rewrite entry with OID %u not found",
      ruletableoid, ruleinfo[i].dobj.catId.oid);
  ruleinfo[i].dobj.namespace = ruleinfo[i].ruletable->dobj.namespace;
  ruleinfo[i].dobj.dump = ruleinfo[i].ruletable->dobj.dump;
  ruleinfo[i].ev_type = *(PQgetvalue(res, i, i_ev_type));
  ruleinfo[i].is_instead = *(PQgetvalue(res, i, i_is_instead)) == 't';
  ruleinfo[i].ev_enabled = *(PQgetvalue(res, i, i_ev_enabled));
  if (ruleinfo[i].ruletable)
  {







   if ((ruleinfo[i].ruletable->relkind == RELKIND_VIEW ||
     ruleinfo[i].ruletable->relkind == RELKIND_MATVIEW) &&
    ruleinfo[i].ev_type == '1' && ruleinfo[i].is_instead)
   {
    addObjectDependency(&ruleinfo[i].ruletable->dobj,
         ruleinfo[i].dobj.dumpId);

    ruleinfo[i].separate = 0;
   }
   else
   {
    addObjectDependency(&ruleinfo[i].dobj,
         ruleinfo[i].ruletable->dobj.dumpId);
    ruleinfo[i].separate = 1;
   }
  }
  else
   ruleinfo[i].separate = 1;
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return ruleinfo;
}
