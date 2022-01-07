
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_namespace ;


 int AlterSchemaOwner_internal (int ,int ,int ) ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NAMESPACENAME ;
 int NamespaceRelationId ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterSchemaOwner(const char *name, Oid newOwnerId)
{
 Oid nspOid;
 HeapTuple tup;
 Relation rel;
 ObjectAddress address;
 Form_pg_namespace nspform;

 rel = table_open(NamespaceRelationId, RowExclusiveLock);

 tup = SearchSysCache1(NAMESPACENAME, CStringGetDatum(name));
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_SCHEMA),
     errmsg("schema \"%s\" does not exist", name)));

 nspform = (Form_pg_namespace) GETSTRUCT(tup);
 nspOid = nspform->oid;

 AlterSchemaOwner_internal(tup, rel, newOwnerId);

 ObjectAddressSet(address, NamespaceRelationId, nspOid);

 ReleaseSysCache(tup);

 table_close(rel, RowExclusiveLock);

 return address;
}
