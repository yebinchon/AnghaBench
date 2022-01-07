
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int nulls ;
typedef scalar_t__ XLogRecPtr ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_subscription_rel_srrelid ;
 int Anum_pg_subscription_rel_srsubid ;
 int Anum_pg_subscription_rel_srsublsn ;
 int Anum_pg_subscription_rel_srsubstate ;
 int CatalogTupleInsert (int ,int ) ;
 int CharGetDatum (char) ;
 int ERROR ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ InvalidXLogRecPtr ;
 int LSNGetDatum (scalar_t__) ;
 int LockSharedObject (int ,int ,int ,int ) ;
 int Natts_pg_subscription_rel ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int SUBSCRIPTIONRELMAP ;
 int SearchSysCacheCopy2 (int ,int,int) ;
 int SubscriptionRelRelationId ;
 int SubscriptionRelationId ;
 int elog (int ,char*,int ,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AddSubscriptionRelState(Oid subid, Oid relid, char state,
      XLogRecPtr sublsn)
{
 Relation rel;
 HeapTuple tup;
 bool nulls[Natts_pg_subscription_rel];
 Datum values[Natts_pg_subscription_rel];

 LockSharedObject(SubscriptionRelationId, subid, 0, AccessShareLock);

 rel = table_open(SubscriptionRelRelationId, RowExclusiveLock);


 tup = SearchSysCacheCopy2(SUBSCRIPTIONRELMAP,
         ObjectIdGetDatum(relid),
         ObjectIdGetDatum(subid));
 if (HeapTupleIsValid(tup))
  elog(ERROR, "subscription table %u in subscription %u already exists",
    relid, subid);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));
 values[Anum_pg_subscription_rel_srsubid - 1] = ObjectIdGetDatum(subid);
 values[Anum_pg_subscription_rel_srrelid - 1] = ObjectIdGetDatum(relid);
 values[Anum_pg_subscription_rel_srsubstate - 1] = CharGetDatum(state);
 if (sublsn != InvalidXLogRecPtr)
  values[Anum_pg_subscription_rel_srsublsn - 1] = LSNGetDatum(sublsn);
 else
  nulls[Anum_pg_subscription_rel_srsublsn - 1] = 1;

 tup = heap_form_tuple(RelationGetDescr(rel), values, nulls);


 CatalogTupleInsert(rel, tup);

 heap_freetuple(tup);


 table_close(rel, NoLock);
}
