
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int ScanDirection ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_enum ;


 int AccessShareLock ;
 int Anum_pg_enum_enumtypid ;
 int BTEqualStrategyNumber ;
 int EnumRelationId ;
 int EnumTypIdSortOrderIndexId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int check_safe_enum_use (int ) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 int systable_beginscan_ordered (int ,int ,int *,int,int *) ;
 int systable_endscan_ordered (int ) ;
 int systable_getnext_ordered (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static Oid
enum_endpoint(Oid enumtypoid, ScanDirection direction)
{
 Relation enum_rel;
 Relation enum_idx;
 SysScanDesc enum_scan;
 HeapTuple enum_tuple;
 ScanKeyData skey;
 Oid minmax;






 ScanKeyInit(&skey,
    Anum_pg_enum_enumtypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(enumtypoid));

 enum_rel = table_open(EnumRelationId, AccessShareLock);
 enum_idx = index_open(EnumTypIdSortOrderIndexId, AccessShareLock);
 enum_scan = systable_beginscan_ordered(enum_rel, enum_idx, ((void*)0),
             1, &skey);

 enum_tuple = systable_getnext_ordered(enum_scan, direction);
 if (HeapTupleIsValid(enum_tuple))
 {

  check_safe_enum_use(enum_tuple);
  minmax = ((Form_pg_enum) GETSTRUCT(enum_tuple))->oid;
 }
 else
 {

  minmax = InvalidOid;
 }

 systable_endscan_ordered(enum_scan);
 index_close(enum_idx, AccessShareLock);
 table_close(enum_rel, AccessShareLock);

 return minmax;
}
