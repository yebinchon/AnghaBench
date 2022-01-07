
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_9__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_8__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int NameData ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;
typedef char const Acl ;


 int Anum_pg_namespace_nspacl ;
 int Anum_pg_namespace_nspname ;
 int Anum_pg_namespace_nspowner ;
 int Anum_pg_namespace_oid ;
 int Assert (int ) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int ERRCODE_DUPLICATE_SCHEMA ;
 int ERROR ;
 int GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 int InvalidOid ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 int NAMESPACENAME ;
 scalar_t__ NameGetDatum (int *) ;
 int NamespaceOidIndexId ;
 int NamespaceRelationId ;
 int Natts_pg_namespace ;
 int OBJECT_SCHEMA ;
 scalar_t__ ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 scalar_t__ PointerGetDatum (char const*) ;
 int RowExclusiveLock ;
 scalar_t__ SearchSysCacheExists1 (int ,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char* get_user_default_acl (int ,int ,int ) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int namestrcpy (int *,char const*) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnNewAcl (int ,int ,int ,int ,char const*) ;
 int recordDependencyOnOwner (int ,int ,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

Oid
NamespaceCreate(const char *nspName, Oid ownerId, bool isTemp)
{
 Relation nspdesc;
 HeapTuple tup;
 Oid nspoid;
 bool nulls[Natts_pg_namespace];
 Datum values[Natts_pg_namespace];
 NameData nname;
 TupleDesc tupDesc;
 ObjectAddress myself;
 int i;
 Acl *nspacl;


 if (!nspName)
  elog(ERROR, "no namespace name supplied");


 if (SearchSysCacheExists1(NAMESPACENAME, PointerGetDatum(nspName)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_SCHEMA),
     errmsg("schema \"%s\" already exists", nspName)));

 if (!isTemp)
  nspacl = get_user_default_acl(OBJECT_SCHEMA, ownerId,
           InvalidOid);
 else
  nspacl = ((void*)0);

 nspdesc = table_open(NamespaceRelationId, RowExclusiveLock);
 tupDesc = nspdesc->rd_att;


 for (i = 0; i < Natts_pg_namespace; i++)
 {
  nulls[i] = 0;
  values[i] = (Datum) ((void*)0);
 }

 nspoid = GetNewOidWithIndex(nspdesc, NamespaceOidIndexId,
        Anum_pg_namespace_oid);
 values[Anum_pg_namespace_oid - 1] = ObjectIdGetDatum(nspoid);
 namestrcpy(&nname, nspName);
 values[Anum_pg_namespace_nspname - 1] = NameGetDatum(&nname);
 values[Anum_pg_namespace_nspowner - 1] = ObjectIdGetDatum(ownerId);
 if (nspacl != ((void*)0))
  values[Anum_pg_namespace_nspacl - 1] = PointerGetDatum(nspacl);
 else
  nulls[Anum_pg_namespace_nspacl - 1] = 1;


 tup = heap_form_tuple(tupDesc, values, nulls);

 CatalogTupleInsert(nspdesc, tup);
 Assert(OidIsValid(nspoid));

 table_close(nspdesc, RowExclusiveLock);


 myself.classId = NamespaceRelationId;
 myself.objectId = nspoid;
 myself.objectSubId = 0;


 recordDependencyOnOwner(NamespaceRelationId, nspoid, ownerId);


 recordDependencyOnNewAcl(NamespaceRelationId, nspoid, 0, ownerId, nspacl);


 if (!isTemp)
  recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(NamespaceRelationId, nspoid, 0);

 return nspoid;
}
