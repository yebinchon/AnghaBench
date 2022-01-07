
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


 int Anum_pg_enum_enumtypid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int EnumRelationId ;
 int EnumTypIdLabelIndexId ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
EnumValuesDelete(Oid enumTypeOid)
{
 Relation pg_enum;
 ScanKeyData key[1];
 SysScanDesc scan;
 HeapTuple tup;

 pg_enum = table_open(EnumRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_enum_enumtypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(enumTypeOid));

 scan = systable_beginscan(pg_enum, EnumTypIdLabelIndexId, 1,
         ((void*)0), 1, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  CatalogTupleDelete(pg_enum, &tup->t_self);
 }

 systable_endscan(scan);

 table_close(pg_enum, RowExclusiveLock);
}
