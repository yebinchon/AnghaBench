
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterForeignServerOwner_internal (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNSERVEROID ;
 int ForeignServerRelationId ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterForeignServerOwner_oid(Oid srvId, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(ForeignServerRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(FOREIGNSERVEROID, ObjectIdGetDatum(srvId));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign server with OID %u does not exist", srvId)));

 AlterForeignServerOwner_internal(rel, tup, newOwnerId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);
}
