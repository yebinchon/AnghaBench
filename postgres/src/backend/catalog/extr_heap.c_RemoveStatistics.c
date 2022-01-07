
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef scalar_t__ AttrNumber ;


 int Anum_pg_statistic_staattnum ;
 int Anum_pg_statistic_starelid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_INT2EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int Int16GetDatum (scalar_t__) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int StatisticRelationId ;
 int StatisticRelidAttnumInhIndexId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveStatistics(Oid relid, AttrNumber attnum)
{
 Relation pgstatistic;
 SysScanDesc scan;
 ScanKeyData key[2];
 int nkeys;
 HeapTuple tuple;

 pgstatistic = table_open(StatisticRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_statistic_starelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));

 if (attnum == 0)
  nkeys = 1;
 else
 {
  ScanKeyInit(&key[1],
     Anum_pg_statistic_staattnum,
     BTEqualStrategyNumber, F_INT2EQ,
     Int16GetDatum(attnum));
  nkeys = 2;
 }

 scan = systable_beginscan(pgstatistic, StatisticRelidAttnumInhIndexId, 1,
         ((void*)0), nkeys, key);


 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
  CatalogTupleDelete(pgstatistic, &tuple->t_self);

 systable_endscan(scan);

 table_close(pgstatistic, RowExclusiveLock);
}
