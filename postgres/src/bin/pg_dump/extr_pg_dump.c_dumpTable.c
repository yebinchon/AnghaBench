
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_15__ ;


struct TYPE_24__ {int oid; } ;
struct TYPE_27__ {int dump; char* name; TYPE_2__* namespace; int dumpId; TYPE_15__ catId; } ;
struct TYPE_28__ {scalar_t__ relkind; char* relacl; char* rrelacl; char* initrelacl; char* initrrelacl; int rolname; TYPE_3__ dobj; } ;
typedef TYPE_4__ TableInfo ;
struct TYPE_31__ {int remoteVersion; TYPE_6__* dopt; } ;
struct TYPE_30__ {int binary_upgrade; scalar_t__ dataOnly; } ;
struct TYPE_29__ {int data; } ;
struct TYPE_25__ {int name; } ;
struct TYPE_26__ {TYPE_1__ dobj; } ;
typedef TYPE_5__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_6__ DumpOptions ;
typedef TYPE_7__ Archive ;


 int DUMP_COMPONENT_ACL ;
 int * ExecuteSqlQuery (TYPE_7__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 scalar_t__ RELKIND_SEQUENCE ;
 int appendPQExpBuffer (TYPE_5__*,char*,int ,...) ;
 int buildACLQueries (TYPE_5__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,char*,char*,char*,int ) ;
 TYPE_5__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_5__*) ;
 int dumpACL (TYPE_7__*,TYPE_15__,int ,char const*,char*,char*,int ,int ,char*,char*,char*,char*) ;
 int dumpSequence (TYPE_7__*,TYPE_4__*) ;
 int dumpTableSchema (TYPE_7__*,TYPE_4__*) ;
 int fmtId (char*) ;
 int free (char*) ;
 char* pg_strdup (int ) ;

__attribute__((used)) static void
dumpTable(Archive *fout, TableInfo *tbinfo)
{
 DumpOptions *dopt = fout->dopt;
 char *namecopy;





 if (!tbinfo->dobj.dump || dopt->dataOnly)
  return;

 if (tbinfo->relkind == RELKIND_SEQUENCE)
  dumpSequence(fout, tbinfo);
 else
  dumpTableSchema(fout, tbinfo);


 namecopy = pg_strdup(fmtId(tbinfo->dobj.name));
 if (tbinfo->dobj.dump & DUMP_COMPONENT_ACL)
 {
  const char *objtype =
  (tbinfo->relkind == RELKIND_SEQUENCE) ? "SEQUENCE" : "TABLE";

  dumpACL(fout, tbinfo->dobj.catId, tbinfo->dobj.dumpId,
    objtype, namecopy, ((void*)0),
    tbinfo->dobj.namespace->dobj.name, tbinfo->rolname,
    tbinfo->relacl, tbinfo->rrelacl,
    tbinfo->initrelacl, tbinfo->initrrelacl);
 }






 if (fout->remoteVersion >= 80400 && tbinfo->dobj.dump & DUMP_COMPONENT_ACL)
 {
  PQExpBuffer query = createPQExpBuffer();
  PGresult *res;
  int i;

  if (fout->remoteVersion >= 90600)
  {
   PQExpBuffer acl_subquery = createPQExpBuffer();
   PQExpBuffer racl_subquery = createPQExpBuffer();
   PQExpBuffer initacl_subquery = createPQExpBuffer();
   PQExpBuffer initracl_subquery = createPQExpBuffer();

   buildACLQueries(acl_subquery, racl_subquery, initacl_subquery,
       initracl_subquery, "at.attacl", "c.relowner", "'c'",
       dopt->binary_upgrade);

   appendPQExpBuffer(query,
         "SELECT at.attname, "
         "%s AS attacl, "
         "%s AS rattacl, "
         "%s AS initattacl, "
         "%s AS initrattacl "
         "FROM pg_catalog.pg_attribute at "
         "JOIN pg_catalog.pg_class c ON (at.attrelid = c.oid) "
         "LEFT JOIN pg_catalog.pg_init_privs pip ON "
         "(at.attrelid = pip.objoid "
         "AND pip.classoid = 'pg_catalog.pg_class'::pg_catalog.regclass "
         "AND at.attnum = pip.objsubid) "
         "WHERE at.attrelid = '%u'::pg_catalog.oid AND "
         "NOT at.attisdropped "
         "AND ("
         "%s IS NOT NULL OR "
         "%s IS NOT NULL OR "
         "%s IS NOT NULL OR "
         "%s IS NOT NULL)"
         "ORDER BY at.attnum",
         acl_subquery->data,
         racl_subquery->data,
         initacl_subquery->data,
         initracl_subquery->data,
         tbinfo->dobj.catId.oid,
         acl_subquery->data,
         racl_subquery->data,
         initacl_subquery->data,
         initracl_subquery->data);

   destroyPQExpBuffer(acl_subquery);
   destroyPQExpBuffer(racl_subquery);
   destroyPQExpBuffer(initacl_subquery);
   destroyPQExpBuffer(initracl_subquery);
  }
  else
  {
   appendPQExpBuffer(query,
         "SELECT attname, attacl, NULL as rattacl, "
         "NULL AS initattacl, NULL AS initrattacl "
         "FROM pg_catalog.pg_attribute "
         "WHERE attrelid = '%u'::pg_catalog.oid AND NOT attisdropped "
         "AND attacl IS NOT NULL "
         "ORDER BY attnum",
         tbinfo->dobj.catId.oid);
  }

  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

  for (i = 0; i < PQntuples(res); i++)
  {
   char *attname = PQgetvalue(res, i, 0);
   char *attacl = PQgetvalue(res, i, 1);
   char *rattacl = PQgetvalue(res, i, 2);
   char *initattacl = PQgetvalue(res, i, 3);
   char *initrattacl = PQgetvalue(res, i, 4);
   char *attnamecopy;

   attnamecopy = pg_strdup(fmtId(attname));

   dumpACL(fout, tbinfo->dobj.catId, tbinfo->dobj.dumpId,
     "TABLE", namecopy, attnamecopy,
     tbinfo->dobj.namespace->dobj.name, tbinfo->rolname,
     attacl, rattacl, initattacl, initrattacl);
   free(attnamecopy);
  }
  PQclear(res);
  destroyPQExpBuffer(query);
 }

 free(namecopy);

 return;
}
