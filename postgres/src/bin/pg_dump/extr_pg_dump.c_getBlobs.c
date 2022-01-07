
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_23__ {int oid; int tableoid; } ;
struct TYPE_22__ {int remoteVersion; TYPE_3__* dopt; } ;
struct TYPE_19__ {void* name; TYPE_6__ catId; int objType; int dump; } ;
struct TYPE_21__ {TYPE_2__ dobj; void* initrblobacl; void* initblobacl; void* rblobacl; void* blobacl; void* rolname; } ;
struct TYPE_20__ {scalar_t__ binary_upgrade; } ;
struct TYPE_18__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_2__ DumpableObject ;
typedef TYPE_3__ DumpOptions ;
typedef TYPE_4__ BlobInfo ;
typedef TYPE_5__ Archive ;


 int AssignDumpId (TYPE_2__*) ;
 int DO_BLOB ;
 int DO_BLOB_DATA ;
 int DUMP_COMPONENT_ACL ;
 int DUMP_COMPONENT_DATA ;
 int * ExecuteSqlQuery (TYPE_5__*,int ,int ) ;
 int LargeObjectRelationId ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ,...) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int atooid (char*) ;
 int buildACLQueries (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,char*,char*,char*,scalar_t__) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 TYPE_6__ nilCatalogId ;
 int pg_log_info (char*) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (char*) ;
 int username_subquery ;

__attribute__((used)) static void
getBlobs(Archive *fout)
{
 DumpOptions *dopt = fout->dopt;
 PQExpBuffer blobQry = createPQExpBuffer();
 BlobInfo *binfo;
 DumpableObject *bdata;
 PGresult *res;
 int ntups;
 int i;
 int i_oid;
 int i_lomowner;
 int i_lomacl;
 int i_rlomacl;
 int i_initlomacl;
 int i_initrlomacl;

 pg_log_info("reading large objects");


 if (fout->remoteVersion >= 90600)
 {
  PQExpBuffer acl_subquery = createPQExpBuffer();
  PQExpBuffer racl_subquery = createPQExpBuffer();
  PQExpBuffer init_acl_subquery = createPQExpBuffer();
  PQExpBuffer init_racl_subquery = createPQExpBuffer();

  buildACLQueries(acl_subquery, racl_subquery, init_acl_subquery,
      init_racl_subquery, "l.lomacl", "l.lomowner", "'L'",
      dopt->binary_upgrade);

  appendPQExpBuffer(blobQry,
        "SELECT l.oid, (%s l.lomowner) AS rolname, "
        "%s AS lomacl, "
        "%s AS rlomacl, "
        "%s AS initlomacl, "
        "%s AS initrlomacl "
        "FROM pg_largeobject_metadata l "
        "LEFT JOIN pg_init_privs pip ON "
        "(l.oid = pip.objoid "
        "AND pip.classoid = 'pg_largeobject'::regclass "
        "AND pip.objsubid = 0) ",
        username_subquery,
        acl_subquery->data,
        racl_subquery->data,
        init_acl_subquery->data,
        init_racl_subquery->data);

  destroyPQExpBuffer(acl_subquery);
  destroyPQExpBuffer(racl_subquery);
  destroyPQExpBuffer(init_acl_subquery);
  destroyPQExpBuffer(init_racl_subquery);
 }
 else if (fout->remoteVersion >= 90000)
  appendPQExpBuffer(blobQry,
        "SELECT oid, (%s lomowner) AS rolname, lomacl, "
        "NULL AS rlomacl, NULL AS initlomacl, "
        "NULL AS initrlomacl "
        " FROM pg_largeobject_metadata",
        username_subquery);
 else
  appendPQExpBufferStr(blobQry,
        "SELECT DISTINCT loid AS oid, "
        "NULL::name AS rolname, NULL::oid AS lomacl, "
        "NULL::oid AS rlomacl, NULL::oid AS initlomacl, "
        "NULL::oid AS initrlomacl "
        " FROM pg_largeobject");

 res = ExecuteSqlQuery(fout, blobQry->data, PGRES_TUPLES_OK);

 i_oid = PQfnumber(res, "oid");
 i_lomowner = PQfnumber(res, "rolname");
 i_lomacl = PQfnumber(res, "lomacl");
 i_rlomacl = PQfnumber(res, "rlomacl");
 i_initlomacl = PQfnumber(res, "initlomacl");
 i_initrlomacl = PQfnumber(res, "initrlomacl");

 ntups = PQntuples(res);




 binfo = (BlobInfo *) pg_malloc(ntups * sizeof(BlobInfo));

 for (i = 0; i < ntups; i++)
 {
  binfo[i].dobj.objType = DO_BLOB;
  binfo[i].dobj.catId.tableoid = LargeObjectRelationId;
  binfo[i].dobj.catId.oid = atooid(PQgetvalue(res, i, i_oid));
  AssignDumpId(&binfo[i].dobj);

  binfo[i].dobj.name = pg_strdup(PQgetvalue(res, i, i_oid));
  binfo[i].rolname = pg_strdup(PQgetvalue(res, i, i_lomowner));
  binfo[i].blobacl = pg_strdup(PQgetvalue(res, i, i_lomacl));
  binfo[i].rblobacl = pg_strdup(PQgetvalue(res, i, i_rlomacl));
  binfo[i].initblobacl = pg_strdup(PQgetvalue(res, i, i_initlomacl));
  binfo[i].initrblobacl = pg_strdup(PQgetvalue(res, i, i_initrlomacl));

  if (PQgetisnull(res, i, i_lomacl) &&
   PQgetisnull(res, i, i_rlomacl) &&
   PQgetisnull(res, i, i_initlomacl) &&
   PQgetisnull(res, i, i_initrlomacl))
   binfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
  if (dopt->binary_upgrade)
   binfo[i].dobj.dump &= ~DUMP_COMPONENT_DATA;
 }





 if (ntups > 0)
 {
  bdata = (DumpableObject *) pg_malloc(sizeof(DumpableObject));
  bdata->objType = DO_BLOB_DATA;
  bdata->catId = nilCatalogId;
  AssignDumpId(bdata);
  bdata->name = pg_strdup("BLOBS");
 }

 PQclear(res);
 destroyPQExpBuffer(blobQry);
}
