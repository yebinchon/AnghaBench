
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_4__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_subscription_rel_srrelid ;
 int Anum_pg_subscription_rel_srsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SubscriptionRelRelationId ;
 TYPE_1__* heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

void
RemoveSubscriptionRel(Oid subid, Oid relid)
{
 Relation rel;
 TableScanDesc scan;
 ScanKeyData skey[2];
 HeapTuple tup;
 int nkeys = 0;

 rel = table_open(SubscriptionRelRelationId, RowExclusiveLock);

 if (OidIsValid(subid))
 {
  ScanKeyInit(&skey[nkeys++],
     Anum_pg_subscription_rel_srsubid,
     BTEqualStrategyNumber,
     F_OIDEQ,
     ObjectIdGetDatum(subid));
 }

 if (OidIsValid(relid))
 {
  ScanKeyInit(&skey[nkeys++],
     Anum_pg_subscription_rel_srrelid,
     BTEqualStrategyNumber,
     F_OIDEQ,
     ObjectIdGetDatum(relid));
 }


 scan = table_beginscan_catalog(rel, nkeys, skey);
 while (HeapTupleIsValid(tup = heap_getnext(scan, ForwardScanDirection)))
 {
  CatalogTupleDelete(rel, &tup->t_self);
 }
 table_endscan(scan);

 table_close(rel, RowExclusiveLock);
}
