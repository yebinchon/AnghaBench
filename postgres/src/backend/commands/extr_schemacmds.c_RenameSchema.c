
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nspname; int oid; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_namespace ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_DUPLICATE_SCHEMA ;
 int ERRCODE_RESERVED_NAME ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 scalar_t__ IsReservedName (char const*) ;
 int MyDatabaseId ;
 int NAMESPACENAME ;
 int NamespaceRelationId ;
 int NoLock ;
 int OBJECT_DATABASE ;
 int OBJECT_SCHEMA ;
 int ObjectAddressSet (int ,int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 char const* get_database_name (int ) ;
 int get_namespace_oid (char const*,int) ;
 int heap_freetuple (TYPE_1__*) ;
 int namestrcpy (int *,char const*) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int pg_namespace_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
RenameSchema(const char *oldname, const char *newname)
{
 Oid nspOid;
 HeapTuple tup;
 Relation rel;
 AclResult aclresult;
 ObjectAddress address;
 Form_pg_namespace nspform;

 rel = table_open(NamespaceRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(NAMESPACENAME, CStringGetDatum(oldname));
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_SCHEMA),
     errmsg("schema \"%s\" does not exist", oldname)));

 nspform = (Form_pg_namespace) GETSTRUCT(tup);
 nspOid = nspform->oid;


 if (OidIsValid(get_namespace_oid(newname, 1)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_SCHEMA),
     errmsg("schema \"%s\" already exists", newname)));


 if (!pg_namespace_ownercheck(nspOid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA,
        oldname);


 aclresult = pg_database_aclcheck(MyDatabaseId, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_DATABASE,
        get_database_name(MyDatabaseId));

 if (!allowSystemTableMods && IsReservedName(newname))
  ereport(ERROR,
    (errcode(ERRCODE_RESERVED_NAME),
     errmsg("unacceptable schema name \"%s\"", newname),
     errdetail("The prefix \"pg_\" is reserved for system schemas.")));


 namestrcpy(&nspform->nspname, newname);
 CatalogTupleUpdate(rel, &tup->t_self, tup);

 InvokeObjectPostAlterHook(NamespaceRelationId, nspOid, 0);

 ObjectAddressSet(address, NamespaceRelationId, nspOid);

 table_close(rel, NoLock);
 heap_freetuple(tup);

 return address;
}
