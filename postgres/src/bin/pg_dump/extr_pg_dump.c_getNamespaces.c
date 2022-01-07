
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


struct TYPE_25__ {int remoteVersion; TYPE_4__* dopt; } ;
struct TYPE_24__ {int binary_upgrade; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {void* name; int dump; TYPE_1__ catId; int objType; } ;
struct TYPE_23__ {TYPE_19__ dobj; void* rolname; void* initrnspacl; void* initnspacl; void* rnspacl; void* nspacl; } ;
struct TYPE_22__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ NamespaceInfo ;
typedef TYPE_4__ DumpOptions ;
typedef TYPE_5__ Archive ;


 int AssignDumpId (TYPE_19__*) ;
 int DO_NAMESPACE ;
 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_5__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 void* atooid (int ) ;
 int buildACLQueries (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*,char*,char*,int ) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int pg_log_warning (char*,void*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int selectDumpableNamespace (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ strlen (void*) ;
 int username_subquery ;

NamespaceInfo *
getNamespaces(Archive *fout, int *numNamespaces)
{
 DumpOptions *dopt = fout->dopt;
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query;
 NamespaceInfo *nsinfo;
 int i_tableoid;
 int i_oid;
 int i_nspname;
 int i_rolname;
 int i_nspacl;
 int i_rnspacl;
 int i_initnspacl;
 int i_initrnspacl;

 query = createPQExpBuffer();





 if (fout->remoteVersion >= 90600)
 {
  PQExpBuffer acl_subquery = createPQExpBuffer();
  PQExpBuffer racl_subquery = createPQExpBuffer();
  PQExpBuffer init_acl_subquery = createPQExpBuffer();
  PQExpBuffer init_racl_subquery = createPQExpBuffer();

  buildACLQueries(acl_subquery, racl_subquery, init_acl_subquery,
      init_racl_subquery, "n.nspacl", "n.nspowner", "'n'",
      dopt->binary_upgrade);

  appendPQExpBuffer(query, "SELECT n.tableoid, n.oid, n.nspname, "
        "(%s nspowner) AS rolname, "
        "%s as nspacl, "
        "%s as rnspacl, "
        "%s as initnspacl, "
        "%s as initrnspacl "
        "FROM pg_namespace n "
        "LEFT JOIN pg_init_privs pip "
        "ON (n.oid = pip.objoid "
        "AND pip.classoid = 'pg_namespace'::regclass "
        "AND pip.objsubid = 0",
        username_subquery,
        acl_subquery->data,
        racl_subquery->data,
        init_acl_subquery->data,
        init_racl_subquery->data);

  appendPQExpBufferStr(query, ") ");

  destroyPQExpBuffer(acl_subquery);
  destroyPQExpBuffer(racl_subquery);
  destroyPQExpBuffer(init_acl_subquery);
  destroyPQExpBuffer(init_racl_subquery);
 }
 else
  appendPQExpBuffer(query, "SELECT tableoid, oid, nspname, "
        "(%s nspowner) AS rolname, "
        "nspacl, NULL as rnspacl, "
        "NULL AS initnspacl, NULL as initrnspacl "
        "FROM pg_namespace",
        username_subquery);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 nsinfo = (NamespaceInfo *) pg_malloc(ntups * sizeof(NamespaceInfo));

 i_tableoid = PQfnumber(res, "tableoid");
 i_oid = PQfnumber(res, "oid");
 i_nspname = PQfnumber(res, "nspname");
 i_rolname = PQfnumber(res, "rolname");
 i_nspacl = PQfnumber(res, "nspacl");
 i_rnspacl = PQfnumber(res, "rnspacl");
 i_initnspacl = PQfnumber(res, "initnspacl");
 i_initrnspacl = PQfnumber(res, "initrnspacl");

 for (i = 0; i < ntups; i++)
 {
  nsinfo[i].dobj.objType = DO_NAMESPACE;
  nsinfo[i].dobj.catId.tableoid = atooid(PQgetvalue(res, i, i_tableoid));
  nsinfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&nsinfo[i].dobj);
  nsinfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_nspname));
  nsinfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_rolname));
  nsinfo[i].nspacl = pg_strdup(PQgetvalue(res, i, i_nspacl));
  nsinfo[i].rnspacl = pg_strdup(PQgetvalue(res, i, i_rnspacl));
  nsinfo[i].initnspacl = pg_strdup(PQgetvalue(res, i, i_initnspacl));
  nsinfo[i].initrnspacl = pg_strdup(PQgetvalue(res, i, i_initrnspacl));


  selectDumpableNamespace(&nsinfo[i], fout);
  if (PQgetisnull(res, i, i_nspacl) && PQgetisnull(res, i, i_rnspacl) &&
   PQgetisnull(res, i, i_initnspacl) &&
   PQgetisnull(res, i, i_initrnspacl))
   nsinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

  if (strlen(nsinfo[i].rolname) == 0)
   pg_log_warning("owner of schema \"%s\" appears to be invalid",
         nsinfo[i].dobj.name);
 }

 PQclear(res);
 destroyPQExpBuffer(query);

 *numNamespaces = ntups;

 return nsinfo;
}
