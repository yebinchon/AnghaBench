
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int AlterSubscriptionOwner_internal (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int SUBSCRIPTIONOID ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int SubscriptionRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterSubscriptionOwner_oid(Oid subid, Oid newOwnerId)
{
 HeapTuple tup;
 Relation rel;

 rel = table_open(SubscriptionRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(SUBSCRIPTIONOID, ObjectIdGetDatum(subid));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("subscription with OID %u does not exist", subid)));

 AlterSubscriptionOwner_internal(rel, tup, newOwnerId);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);
}
