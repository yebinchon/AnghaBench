
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterEventTriggerOwner_internal (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int EVENTTRIGGEROID ;
 int EventTriggerRelationId ;
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
AlterEventTriggerOwner_oid(Oid trigOid, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(EventTriggerRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(EVENTTRIGGEROID, ObjectIdGetDatum(trigOid));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("event trigger with OID %u does not exist", trigOid)));

 AlterEventTriggerOwner_internal(rel, tup, newOwnerId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);
}
