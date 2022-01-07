
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterSchemaOwner_internal (int ,int ,int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int NAMESPACEOID ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterSchemaOwner_oid(Oid oid, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(NamespaceRelationId, RowExclusiveLock);

 tup = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(oid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for schema %u", oid);

 AlterSchemaOwner_internal(tup, rel, newOwnerId);

 ReleaseSysCache(tup);

 table_close(rel, RowExclusiveLock);
}
