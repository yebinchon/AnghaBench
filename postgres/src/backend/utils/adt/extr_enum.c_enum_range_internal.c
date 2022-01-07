
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_enum ;
typedef int Datum ;
typedef int ArrayType ;


 int AccessShareLock ;
 int Anum_pg_enum_enumtypid ;
 int BTEqualStrategyNumber ;
 int EnumRelationId ;
 int EnumTypIdSortOrderIndexId ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int check_safe_enum_use (int ) ;
 int * construct_array (int *,int,scalar_t__,int,int,char) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 scalar_t__ repalloc (int *,int) ;
 int systable_beginscan_ordered (int ,int ,int *,int,int *) ;
 int systable_endscan_ordered (int ) ;
 int systable_getnext_ordered (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static ArrayType *
enum_range_internal(Oid enumtypoid, Oid lower, Oid upper)
{
 ArrayType *result;
 Relation enum_rel;
 Relation enum_idx;
 SysScanDesc enum_scan;
 HeapTuple enum_tuple;
 ScanKeyData skey;
 Datum *elems;
 int max,
    cnt;
 bool left_found;






 ScanKeyInit(&skey,
    Anum_pg_enum_enumtypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(enumtypoid));

 enum_rel = table_open(EnumRelationId, AccessShareLock);
 enum_idx = index_open(EnumTypIdSortOrderIndexId, AccessShareLock);
 enum_scan = systable_beginscan_ordered(enum_rel, enum_idx, ((void*)0), 1, &skey);

 max = 64;
 elems = (Datum *) palloc(max * sizeof(Datum));
 cnt = 0;
 left_found = !OidIsValid(lower);

 while (HeapTupleIsValid(enum_tuple = systable_getnext_ordered(enum_scan, ForwardScanDirection)))
 {
  Oid enum_oid = ((Form_pg_enum) GETSTRUCT(enum_tuple))->oid;

  if (!left_found && lower == enum_oid)
   left_found = 1;

  if (left_found)
  {

   check_safe_enum_use(enum_tuple);

   if (cnt >= max)
   {
    max *= 2;
    elems = (Datum *) repalloc(elems, max * sizeof(Datum));
   }

   elems[cnt++] = ObjectIdGetDatum(enum_oid);
  }

  if (OidIsValid(upper) && upper == enum_oid)
   break;
 }

 systable_endscan_ordered(enum_scan);
 index_close(enum_idx, AccessShareLock);
 table_close(enum_rel, AccessShareLock);



 result = construct_array(elems, cnt, enumtypoid, sizeof(Oid), 1, 'i');

 pfree(elems);

 return result;
}
