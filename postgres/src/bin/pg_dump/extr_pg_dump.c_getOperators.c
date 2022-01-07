
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {void* name; int dump; int namespace; TYPE_1__ catId; int objType; } ;
struct TYPE_12__ {TYPE_4__ dobj; void* rolname; void* oprcode; int oprkind; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ OprInfo ;
typedef int Archive ;


 int AssignDumpId (TYPE_4__*) ;
 int DO_OPERATOR ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int * PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 void* atooid (int *) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int findNamespace (int *,void*) ;
 int pg_log_warning (char*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int *) ;
 int selectDumpableObject (TYPE_4__*,int *) ;
 scalar_t__ strlen (void*) ;
 int username_subquery ;

OprInfo *
getOperators(Archive *fout, int *numOprs)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query = createPQExpBuffer();
 OprInfo *oprinfo;
 int i_tableoid;
 int i_oid;
 int i_oprname;
 int i_oprnamespace;
 int i_rolname;
 int i_oprkind;
 int i_oprcode;






 appendPQExpBuffer(query, "SELECT tableoid, oid, oprname, "
       "oprnamespace, "
       "(%s oprowner) AS rolname, "
       "oprkind, "
       "oprcode::oid AS oprcode "
       "FROM pg_operator",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numOprs = ntups;

 oprinfo = (OprInfo *) pg_malloc(ntups * sizeof(OprInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_oprname = PQfnumber(res, "oprname");
 i_oprnamespace = PQfnumber(res, "oprnamespace");
 i_rolname = PQfnumber(res, "rolname");
 i_oprkind = PQfnumber(res, "oprkind");
 i_oprcode = PQfnumber(res, "oprcode");

 for (i = 0; i < ntups; i++)
 {
  oprinfo[i].dobj.objType = DO_OPERATOR;
  oprinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  oprinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&oprinfo[i].dobj);
  oprinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_oprname));
  oprinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_oprnamespace)));
  oprinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));
  oprinfo[i].oprkind = (PQgetvalue(res, i, i_oprkind))[0];
  oprinfo[i].oprcode = atooid(PQgetvalue(res, i, i_oprcode));


  selectDumpableObject(&(oprinfo[i].dobj), fout);


  oprinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

  if (strlen(oprinfo[i].rolname) == 0)
   pg_log_warning("owner of operator \"%s\" appears to be invalid",
         oprinfo[i].dobj.name);
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return oprinfo;
}
