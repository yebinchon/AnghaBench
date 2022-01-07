
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct TYPE_25__ {int remoteVersion; TYPE_3__* dopt; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {int * namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_24__ {void* initrdefaclacl; void* initdefaclacl; void* rdefaclacl; void* defaclacl; int defaclobjtype; void* defaclrole; TYPE_19__ dobj; } ;
struct TYPE_23__ {int binary_upgrade; } ;
struct TYPE_22__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ DumpOptions ;
typedef TYPE_4__ DefaultACLInfo ;
typedef TYPE_5__ Archive ;


 int AssignDumpId (TYPE_19__*) ;
 int DO_DEFAULT_ACL ;
 int * ExecuteSqlQuery (TYPE_5__*,int ,int ) ;
 scalar_t__ InvalidOid ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int * PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,...) ;
 void* atooid (int *) ;
 int buildACLQueries (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*,char*,char*,int ) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int * findNamespace (TYPE_5__*,scalar_t__) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int *) ;
 int selectDumpableDefaultACL (TYPE_4__*,TYPE_3__*) ;
 int username_subquery ;

DefaultACLInfo *
getDefaultACLs(Archive *fout, int *numDefaultACLs)
{
 DumpOptions *dopt = fout->dopt;
 DefaultACLInfo *daclinfo;
 PQExpBuffer query;
 PGresult *res;
 int i_oid;
 int i_tableoid;
 int i_defaclrole;
 int i_defaclnamespace;
 int i_defaclobjtype;
 int i_defaclacl;
 int i_rdefaclacl;
 int i_initdefaclacl;
 int i_initrdefaclacl;
 int i,
    ntups;

 if (fout->remoteVersion < 90000)
 {
  *numDefaultACLs = 0;
  return ((void*)0);
 }

 query = createPQExpBuffer();

 if (fout->remoteVersion >= 90600)
 {
  PQExpBuffer acl_subquery = createPQExpBuffer();
  PQExpBuffer racl_subquery = createPQExpBuffer();
  PQExpBuffer initacl_subquery = createPQExpBuffer();
  PQExpBuffer initracl_subquery = createPQExpBuffer();

  buildACLQueries(acl_subquery, racl_subquery, initacl_subquery,
      initracl_subquery, "defaclacl", "defaclrole",
      "CASE WHEN defaclobjtype = 'S' THEN 's' ELSE defaclobjtype END::\"char\"",
      dopt->binary_upgrade);

  appendPQExpBuffer(query, "SELECT d.oid, d.tableoid, "
        "(%s d.defaclrole) AS defaclrole, "
        "d.defaclnamespace, "
        "d.defaclobjtype, "
        "%s AS defaclacl, "
        "%s AS rdefaclacl, "
        "%s AS initdefaclacl, "
        "%s AS initrdefaclacl "
        "FROM pg_default_acl d "
        "LEFT JOIN pg_init_privs pip ON "
        "(d.oid = pip.objoid "
        "AND pip.classoid = 'pg_default_acl'::regclass "
        "AND pip.objsubid = 0) ",
        username_subquery,
        acl_subquery->data,
        racl_subquery->data,
        initacl_subquery->data,
        initracl_subquery->data);
 }
 else
 {
  appendPQExpBuffer(query, "SELECT oid, tableoid, "
        "(%s defaclrole) AS defaclrole, "
        "defaclnamespace, "
        "defaclobjtype, "
        "defaclacl, "
        "NULL AS rdefaclacl, "
        "NULL AS initdefaclacl, "
        "NULL AS initrdefaclacl "
        "FROM pg_default_acl",
        username_subquery);
 }

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);
 *numDefaultACLs = ntups;

 daclinfo = (DefaultACLInfo *) pg_malloc(ntups * sizeof(DefaultACLInfo));

 i_oid = PQfnumber(res, "oid");
 i_tableoid = PQfnumber(res, "tableoid");
 i_defaclrole = PQfnumber(res, "defaclrole");
 i_defaclnamespace = PQfnumber(res, "defaclnamespace");
 i_defaclobjtype = PQfnumber(res, "defaclobjtype");
 i_defaclacl = PQfnumber(res, "defaclacl");
 i_rdefaclacl = PQfnumber(res, "rdefaclacl");
 i_initdefaclacl = PQfnumber(res, "initdefaclacl");
 i_initrdefaclacl = PQfnumber(res, "initrdefaclacl");

 for (i = 0; i < ntups; i++)
 {
  Oid nspid = atooid(PQgetvalue(res, i, i_defaclnamespace));

  daclinfo[i].dobj.objType = DO_DEFAULT_ACL;
  daclinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  daclinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&daclinfo[i].dobj);

  daclinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_defaclobjtype));

  if (nspid != InvalidOid)
   daclinfo[i].dobj.namespace = findNamespace(fout, nspid);
  else
   daclinfo[i].dobj.namespace = ((void*)0);

  daclinfo[i].defaclrole = pg_strdup(PQgetvalue(res, i, i_defaclrole));
  daclinfo[i].defaclobjtype = *(PQgetvalue(res, i, i_defaclobjtype));
  daclinfo[i].defaclacl = pg_strdup(PQgetvalue(res, i, i_defaclacl));
  daclinfo[i].rdefaclacl = pg_strdup(PQgetvalue(res, i, i_rdefaclacl));
  daclinfo[i].initdefaclacl = pg_strdup(PQgetvalue(res, i, i_initdefaclacl));
  daclinfo[i].initrdefaclacl = pg_strdup(PQgetvalue(res, i, i_initrdefaclacl));


  selectDumpableDefaultACL(&(daclinfo[i]), dopt);
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return daclinfo;
}
