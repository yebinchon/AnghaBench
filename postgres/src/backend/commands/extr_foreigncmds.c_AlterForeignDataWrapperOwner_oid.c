
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterForeignDataWrapperOwner_internal (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNDATAWRAPPEROID ;
 int ForeignDataWrapperRelationId ;
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
AlterForeignDataWrapperOwner_oid(Oid fwdId, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(ForeignDataWrapperRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(FOREIGNDATAWRAPPEROID, ObjectIdGetDatum(fwdId));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign-data wrapper with OID %u does not exist", fwdId)));

 AlterForeignDataWrapperOwner_internal(rel, tup, newOwnerId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);
}
