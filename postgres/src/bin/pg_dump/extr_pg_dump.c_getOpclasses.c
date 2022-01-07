
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
struct TYPE_12__ {TYPE_4__ dobj; void* rolname; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ OpclassInfo ;
typedef int Archive ;


 int AssignDumpId (TYPE_4__*) ;
 int DO_OPCLASS ;
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
 int pg_log_warning (char*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_4__*,int *) ;
 scalar_t__ strlen (void*) ;
 int username_subquery ;

OpclassInfo *
getOpclasses(Archive *fout, int *numOpclasses)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query = createPQExpBuffer();
 OpclassInfo *opcinfo;
 int i_tableoid;
 int i_oid;
 int i_opcname;
 int i_opcnamespace;
 int i_rolname;






 appendPQExpBuffer(query, "SELECT tableoid, oid, opcname, "
       "opcnamespace, "
       "(%s opcowner) AS rolname "
       "FROM pg_opclass",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numOpclasses = ntups;

 opcinfo = (OpclassInfo *) pg_malloc(ntups * sizeof(OpclassInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_opcname = PQfnumber(res, "opcname");
 i_opcnamespace = PQfnumber(res, "opcnamespace");
 i_rolname = PQfnumber(res, "rolname");

 for (i = 0; i < ntups; i++)
 {
  opcinfo[i].dobj.objType = DO_OPCLASS;
  opcinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  opcinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&opcinfo[i].dobj);
  opcinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_opcname));
  opcinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_opcnamespace)));
  opcinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));


  selectDumpableObject(&(opcinfo[i].dobj), fout);


  opcinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

  if (strlen(opcinfo[i].rolname) == 0)
   pg_log_warning("owner of operator class \"%s\" appears to be invalid",
         opcinfo[i].dobj.name);
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return opcinfo;
}
