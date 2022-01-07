
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {scalar_t__ tableoid; scalar_t__ oid; } ;
struct TYPE_14__ {scalar_t__ tableoid; scalar_t__ oid; } ;
struct TYPE_16__ {scalar_t__ objType; int dumpId; TYPE_1__ catId; } ;
struct TYPE_15__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ DumpableObject ;
typedef TYPE_4__ CatalogId ;
typedef TYPE_5__ Archive ;


 scalar_t__ DO_TABLE ;
 scalar_t__ DO_TYPE ;
 int * ExecuteSqlQuery (TYPE_5__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int addObjectDependency (TYPE_3__*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 void* atooid (char*) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 TYPE_3__* findObjectByCatalogId (TYPE_4__) ;
 int pg_log_info (char*) ;
 int pg_log_warning (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
getDependencies(Archive *fout)
{
 PQExpBuffer query;
 PGresult *res;
 int ntups,
    i;
 int i_classid,
    i_objid,
    i_refclassid,
    i_refobjid,
    i_deptype;
 DumpableObject *dobj,
      *refdobj;

 pg_log_info("reading dependency data");

 query = createPQExpBuffer();
 appendPQExpBufferStr(query, "SELECT "
       "classid, objid, refclassid, refobjid, deptype "
       "FROM pg_depend "
       "WHERE deptype != 'p' AND deptype != 'e'\n");
 if (fout->remoteVersion >= 80300)
 {
  appendPQExpBufferStr(query, "UNION ALL\n"
        "SELECT 'pg_opfamily'::regclass AS classid, amopfamily AS objid, refclassid, refobjid, deptype "
        "FROM pg_depend d, pg_amop o "
        "WHERE deptype NOT IN ('p', 'e', 'i') AND "
        "classid = 'pg_amop'::regclass AND objid = o.oid "
        "AND NOT (refclassid = 'pg_opfamily'::regclass AND amopfamily = refobjid)\n");


  appendPQExpBufferStr(query, "UNION ALL\n"
        "SELECT 'pg_opfamily'::regclass AS classid, amprocfamily AS objid, refclassid, refobjid, deptype "
        "FROM pg_depend d, pg_amproc p "
        "WHERE deptype NOT IN ('p', 'e', 'i') AND "
        "classid = 'pg_amproc'::regclass AND objid = p.oid "
        "AND NOT (refclassid = 'pg_opfamily'::regclass AND amprocfamily = refobjid)\n");
 }


 appendPQExpBufferStr(query, "ORDER BY 1,2");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 i_classid = PQfnumber(res, "classid");
 i_objid = PQfnumber(res, "objid");
 i_refclassid = PQfnumber(res, "refclassid");
 i_refobjid = PQfnumber(res, "refobjid");
 i_deptype = PQfnumber(res, "deptype");






 dobj = ((void*)0);

 for (i = 0; i < ntups; i++)
 {
  CatalogId objId;
  CatalogId refobjId;
  char deptype;

  objId.tableoid = atooid(PQgetvalue(res, i, i_classid));
  objId.oid = atooid(PQgetvalue(res, i, i_objid));
  refobjId.tableoid = atooid(PQgetvalue(res, i, i_refclassid));
  refobjId.oid = atooid(PQgetvalue(res, i, i_refobjid));
  deptype = *(PQgetvalue(res, i, i_deptype));

  if (dobj == ((void*)0) ||
   dobj->catId.tableoid != objId.tableoid ||
   dobj->catId.oid != objId.oid)
   dobj = findObjectByCatalogId(objId);





  if (dobj == ((void*)0))
  {




   continue;
  }

  refdobj = findObjectByCatalogId(refobjId);

  if (refdobj == ((void*)0))
  {




   continue;
  }
  if (deptype == 'i' &&
   dobj->objType == DO_TABLE &&
   refdobj->objType == DO_TYPE)
   addObjectDependency(refdobj, dobj->dumpId);
  else

   addObjectDependency(dobj, refdobj->dumpId);
 }

 PQclear(res);

 destroyPQExpBuffer(query);
}
