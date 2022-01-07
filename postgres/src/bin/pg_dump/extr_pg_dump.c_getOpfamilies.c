
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
struct TYPE_19__ {void* name; int dump; int namespace; TYPE_1__ catId; int objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {TYPE_5__ dobj; void* rolname; } ;
struct TYPE_16__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ OpfamilyInfo ;
typedef TYPE_4__ Archive ;


 int AssignDumpId (TYPE_5__*) ;
 int DO_OPFAMILY ;
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
 int pg_log_warning (char*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableObject (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ strlen (void*) ;
 int username_subquery ;

OpfamilyInfo *
getOpfamilies(Archive *fout, int *numOpfamilies)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 OpfamilyInfo *opfinfo;
 int i_tableoid;
 int i_oid;
 int i_opfname;
 int i_opfnamespace;
 int i_rolname;


 if (fout->remoteVersion < 80300)
 {
  *numOpfamilies = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();






 appendPQExpBuffer(query, "SELECT tableoid, oid, opfname, "
       "opfnamespace, "
       "(%s opfowner) AS rolname "
       "FROM pg_opfamily",
       username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numOpfamilies = ntups;

 opfinfo = (OpfamilyInfo *) pg_malloc(ntups * sizeof(OpfamilyInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_opfname = PQfnumber(res, "opfname");
 i_opfnamespace = PQfnumber(res, "opfnamespace");
 i_rolname = PQfnumber(res, "rolname");

 for (i = 0; i < ntups; i++)
 {
  opfinfo[i].dobj.objType = DO_OPFAMILY;
  opfinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  opfinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&opfinfo[i].dobj);
  opfinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_opfname));
  opfinfo[i].dobj.namespace =
   findNamespace(fout,
        atooid(PQgetvalue(res, i, i_opfnamespace)));
  opfinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));


  selectDumpableObject(&(opfinfo[i].dobj), fout);


  opfinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

  if (strlen(opfinfo[i].rolname) == 0)
   pg_log_warning("owner of operator family \"%s\" appears to be invalid",
         opfinfo[i].dobj.name);
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return opfinfo;
}
