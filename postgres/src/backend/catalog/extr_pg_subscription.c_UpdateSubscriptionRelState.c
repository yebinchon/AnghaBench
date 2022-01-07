
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_7__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_subscription_rel_srsublsn ;
 int Anum_pg_subscription_rel_srsubstate ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CharGetDatum (char) ;
 int ERROR ;
 int HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ InvalidXLogRecPtr ;
 int LSNGetDatum (scalar_t__) ;
 int LockSharedObject (int ,int ,int ,int ) ;
 int Natts_pg_subscription_rel ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int SUBSCRIPTIONRELMAP ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int SubscriptionRelRelationId ;
 int SubscriptionRelationId ;
 int elog (int ,char*,int ,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
UpdateSubscriptionRelState(Oid subid, Oid relid, char state,
         XLogRecPtr sublsn)
{
 Relation rel;
 HeapTuple tup;
 bool nulls[Natts_pg_subscription_rel];
 Datum values[Natts_pg_subscription_rel];
 bool replaces[Natts_pg_subscription_rel];

 LockSharedObject(SubscriptionRelationId, subid, 0, AccessShareLock);

 rel = table_open(SubscriptionRelRelationId, RowExclusiveLock);


 tup = SearchSysCacheCopy2(SUBSCRIPTIONRELMAP,
         ObjectIdGetDatum(relid),
         ObjectIdGetDatum(subid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "subscription table %u in subscription %u does not exist",
    relid, subid);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));
 memset(replaces, 0, sizeof(replaces));

 replaces[Anum_pg_subscription_rel_srsubstate - 1] = 1;
 values[Anum_pg_subscription_rel_srsubstate - 1] = CharGetDatum(state);

 replaces[Anum_pg_subscription_rel_srsublsn - 1] = 1;
 if (sublsn != InvalidXLogRecPtr)
  values[Anum_pg_subscription_rel_srsublsn - 1] = LSNGetDatum(sublsn);
 else
  nulls[Anum_pg_subscription_rel_srsublsn - 1] = 1;

 tup = heap_modify_tuple(tup, RelationGetDescr(rel), values, nulls,
       replaces);


 CatalogTupleUpdate(rel, &tup->t_self, tup);


 table_close(rel, NoLock);
}
