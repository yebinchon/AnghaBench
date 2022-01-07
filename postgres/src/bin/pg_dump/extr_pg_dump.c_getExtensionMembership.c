
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {scalar_t__ oid; } ;
struct TYPE_14__ {TYPE_1__ catId; } ;
struct TYPE_17__ {TYPE_2__ dobj; } ;
struct TYPE_16__ {TYPE_5__* ext; TYPE_6__ catId; } ;
struct TYPE_15__ {int data; } ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef scalar_t__ Oid ;
typedef TYPE_4__ ExtensionMemberId ;
typedef TYPE_5__ ExtensionInfo ;
typedef TYPE_6__ CatalogId ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 void* atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 TYPE_5__* findExtensionByOid (scalar_t__) ;
 int pg_log_warning (char*,scalar_t__) ;
 scalar_t__ pg_malloc (int) ;
 int setExtensionMembership (TYPE_4__*,int) ;

void
getExtensionMembership(Archive *fout, ExtensionInfo extinfo[],
        int numExtensions)
{
 PQExpBuffer query;
 PGresult *res;
 int ntups,
    nextmembers,
    i;
 int i_classid,
    i_objid,
    i_refobjid;
 ExtensionMemberId *extmembers;
 ExtensionInfo *ext;


 if (numExtensions == 0)
  return;

 query = createPQExpBuffer();


 appendPQExpBufferStr(query, "SELECT "
       "classid, objid, refobjid "
       "FROM pg_depend "
       "WHERE refclassid = 'pg_extension'::regclass "
       "AND deptype = 'e' "
       "ORDER BY 3");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 i_classid = PQfnumber(res, "classid");
 i_objid = PQfnumber(res, "objid");
 i_refobjid = PQfnumber(res, "refobjid");

 extmembers = (ExtensionMemberId *) pg_malloc(ntups * sizeof(ExtensionMemberId));
 nextmembers = 0;
 ext = ((void*)0);

 for (i = 0; i < ntups; i++)
 {
  CatalogId objId;
  Oid extId;

  objId.tableoid = atooid(PQgetvalue(res, i, i_classid));
  objId.oid = atooid(PQgetvalue(res, i, i_objid));
  extId = atooid(PQgetvalue(res, i, i_refobjid));

  if (ext == ((void*)0) ||
   ext->dobj.catId.oid != extId)
   ext = findExtensionByOid(extId);

  if (ext == ((void*)0))
  {

   pg_log_warning("could not find referenced extension %u", extId);
   continue;
  }

  extmembers[nextmembers].catId = objId;
  extmembers[nextmembers].ext = ext;
  nextmembers++;
 }

 PQclear(res);


 setExtensionMembership(extmembers, nextmembers);

 destroyPQExpBuffer(query);
}
