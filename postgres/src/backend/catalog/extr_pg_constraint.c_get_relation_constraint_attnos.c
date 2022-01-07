
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_2__ {int oid; } ;
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
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int * DatumGetArrayTypeP (int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ INT2OID ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * bms_add_member (int *,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_rel_name (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Bitmapset *
get_relation_constraint_attnos(Oid relid, const char *conname,
          bool missing_ok, Oid *constraintOid)
{
 Bitmapset *conattnos = ((void*)0);
 Relation pg_constraint;
 HeapTuple tuple;
 SysScanDesc scan;
 ScanKeyData skey[3];


 *constraintOid = InvalidOid;

 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&skey[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(InvalidOid));
 ScanKeyInit(&skey[2],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(conname));

 scan = systable_beginscan(pg_constraint, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 3, skey);


 if (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  Datum adatum;
  bool isNull;

  *constraintOid = ((Form_pg_constraint) GETSTRUCT(tuple))->oid;


  adatum = heap_getattr(tuple, Anum_pg_constraint_conkey,
         RelationGetDescr(pg_constraint), &isNull);
  if (!isNull)
  {
   ArrayType *arr;
   int numcols;
   int16 *attnums;
   int i;

   arr = DatumGetArrayTypeP(adatum);
   numcols = ARR_DIMS(arr)[0];
   if (ARR_NDIM(arr) != 1 ||
    numcols < 0 ||
    ARR_HASNULL(arr) ||
    ARR_ELEMTYPE(arr) != INT2OID)
    elog(ERROR, "conkey is not a 1-D smallint array");
   attnums = (int16 *) ARR_DATA_PTR(arr);


   for (i = 0; i < numcols; i++)
   {
    conattnos = bms_add_member(conattnos,
             attnums[i] - FirstLowInvalidHeapAttributeNumber);
   }
  }
 }

 systable_endscan(scan);


 if (!OidIsValid(*constraintOid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("constraint \"%s\" for table \"%s\" does not exist",
      conname, get_rel_name(relid))));

 table_close(pg_constraint, AccessShareLock);

 return conattnos;
}
