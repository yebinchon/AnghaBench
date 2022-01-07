
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_2__ {scalar_t__ contype; int oid; scalar_t__ condeferrable; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;
typedef int Datum ;
typedef int Bitmapset ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int AccessShareLock ;
 int Anum_pg_constraint_conkey ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_PRIMARY ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ INT2OID ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * bms_add_member (int *,scalar_t__) ;
 int elog (int ,char*,...) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Bitmapset *
get_primary_key_attnos(Oid relid, bool deferrableOk, Oid *constraintOid)
{
 Bitmapset *pkattnos = ((void*)0);
 Relation pg_constraint;
 HeapTuple tuple;
 SysScanDesc scan;
 ScanKeyData skey[1];


 *constraintOid = InvalidOid;


 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(pg_constraint, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 1, skey);

 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  Form_pg_constraint con = (Form_pg_constraint) GETSTRUCT(tuple);
  Datum adatum;
  bool isNull;
  ArrayType *arr;
  int16 *attnums;
  int numkeys;
  int i;


  if (con->contype != CONSTRAINT_PRIMARY)
   continue;






  if (con->condeferrable && !deferrableOk)
   break;


  adatum = heap_getattr(tuple, Anum_pg_constraint_conkey,
         RelationGetDescr(pg_constraint), &isNull);
  if (isNull)
   elog(ERROR, "null conkey for constraint %u",
     ((Form_pg_constraint) GETSTRUCT(tuple))->oid);
  arr = DatumGetArrayTypeP(adatum);
  numkeys = ARR_DIMS(arr)[0];
  if (ARR_NDIM(arr) != 1 ||
   numkeys < 0 ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != INT2OID)
   elog(ERROR, "conkey is not a 1-D smallint array");
  attnums = (int16 *) ARR_DATA_PTR(arr);


  for (i = 0; i < numkeys; i++)
  {
   pkattnos = bms_add_member(pkattnos,
           attnums[i] - FirstLowInvalidHeapAttributeNumber);
  }
  *constraintOid = ((Form_pg_constraint) GETSTRUCT(tuple))->oid;


  break;
 }

 systable_endscan(scan);

 table_close(pg_constraint, AccessShareLock);

 return pkattnos;
}
