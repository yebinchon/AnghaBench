
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_ts_config_map_mapcfg ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int TSCONFIGOID ;
 int TSConfigMapIndexId ;
 int TSConfigMapRelationId ;
 int TSConfigRelationId ;
 int elog (int ,char*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveTSConfigurationById(Oid cfgId)
{
 Relation relCfg,
    relMap;
 HeapTuple tup;
 ScanKeyData skey;
 SysScanDesc scan;


 relCfg = table_open(TSConfigRelationId, RowExclusiveLock);

 tup = SearchSysCache1(TSCONFIGOID, ObjectIdGetDatum(cfgId));

 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for text search dictionary %u",
    cfgId);

 CatalogTupleDelete(relCfg, &tup->t_self);

 ReleaseSysCache(tup);

 table_close(relCfg, RowExclusiveLock);


 relMap = table_open(TSConfigMapRelationId, RowExclusiveLock);

 ScanKeyInit(&skey,
    Anum_pg_ts_config_map_mapcfg,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(cfgId));

 scan = systable_beginscan(relMap, TSConfigMapIndexId, 1,
         ((void*)0), 1, &skey);

 while (HeapTupleIsValid((tup = systable_getnext(scan))))
 {
  CatalogTupleDelete(relMap, &tup->t_self);
 }

 systable_endscan(scan);

 table_close(relMap, RowExclusiveLock);
}
