
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;


 int Anum_pg_subscription_subdbid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SubscriptionRelationId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

int
CountDBSubscriptions(Oid dbid)
{
 int nsubs = 0;
 Relation rel;
 ScanKeyData scankey;
 SysScanDesc scan;
 HeapTuple tup;

 rel = table_open(SubscriptionRelationId, RowExclusiveLock);

 ScanKeyInit(&scankey,
    Anum_pg_subscription_subdbid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(dbid));

 scan = systable_beginscan(rel, InvalidOid, 0,
         ((void*)0), 1, &scankey);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
  nsubs++;

 systable_endscan(scan);

 table_close(rel, NoLock);

 return nsubs;
}
