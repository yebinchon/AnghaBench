
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {int oid; } ;
typedef scalar_t__ Pointer ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;
typedef int Datum ;
typedef int AttrNumber ;
typedef int ArrayType ;


 int ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_constraint_conffeqop ;
 int Anum_pg_constraint_confkey ;
 int Anum_pg_constraint_conkey ;
 int Anum_pg_constraint_conpfeqop ;
 int Anum_pg_constraint_conppeqop ;
 int CONSTROID ;
 int * DatumGetArrayTypeP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int INDEX_MAX_KEYS ;
 scalar_t__ INT2OID ;
 scalar_t__ OIDOID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,...) ;
 int memcpy (int *,int ,int) ;
 int pfree (int *) ;

void
DeconstructFkConstraintRow(HeapTuple tuple, int *numfks,
         AttrNumber *conkey, AttrNumber *confkey,
         Oid *pf_eq_oprs, Oid *pp_eq_oprs, Oid *ff_eq_oprs)
{
 Oid constrId;
 Datum adatum;
 bool isNull;
 ArrayType *arr;
 int numkeys;

 constrId = ((Form_pg_constraint) GETSTRUCT(tuple))->oid;






 adatum = SysCacheGetAttr(CONSTROID, tuple,
        Anum_pg_constraint_conkey, &isNull);
 if (isNull)
  elog(ERROR, "null conkey for constraint %u", constrId);
 arr = DatumGetArrayTypeP(adatum);
 if (ARR_NDIM(arr) != 1 ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != INT2OID)
  elog(ERROR, "conkey is not a 1-D smallint array");
 numkeys = ARR_DIMS(arr)[0];
 if (numkeys <= 0 || numkeys > INDEX_MAX_KEYS)
  elog(ERROR, "foreign key constraint cannot have %d columns", numkeys);
 memcpy(conkey, ARR_DATA_PTR(arr), numkeys * sizeof(int16));
 if ((Pointer) arr != DatumGetPointer(adatum))
  pfree(arr);

 adatum = SysCacheGetAttr(CONSTROID, tuple,
        Anum_pg_constraint_confkey, &isNull);
 if (isNull)
  elog(ERROR, "null confkey for constraint %u", constrId);
 arr = DatumGetArrayTypeP(adatum);
 if (ARR_NDIM(arr) != 1 ||
  ARR_DIMS(arr)[0] != numkeys ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != INT2OID)
  elog(ERROR, "confkey is not a 1-D smallint array");
 memcpy(confkey, ARR_DATA_PTR(arr), numkeys * sizeof(int16));
 if ((Pointer) arr != DatumGetPointer(adatum))
  pfree(arr);

 if (pf_eq_oprs)
 {
  adatum = SysCacheGetAttr(CONSTROID, tuple,
         Anum_pg_constraint_conpfeqop, &isNull);
  if (isNull)
   elog(ERROR, "null conpfeqop for constraint %u", constrId);
  arr = DatumGetArrayTypeP(adatum);

  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numkeys ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "conpfeqop is not a 1-D Oid array");
  memcpy(pf_eq_oprs, ARR_DATA_PTR(arr), numkeys * sizeof(Oid));
  if ((Pointer) arr != DatumGetPointer(adatum))
   pfree(arr);
 }

 if (pp_eq_oprs)
 {
  adatum = SysCacheGetAttr(CONSTROID, tuple,
         Anum_pg_constraint_conppeqop, &isNull);
  if (isNull)
   elog(ERROR, "null conppeqop for constraint %u", constrId);
  arr = DatumGetArrayTypeP(adatum);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numkeys ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "conppeqop is not a 1-D Oid array");
  memcpy(pp_eq_oprs, ARR_DATA_PTR(arr), numkeys * sizeof(Oid));
  if ((Pointer) arr != DatumGetPointer(adatum))
   pfree(arr);
 }

 if (ff_eq_oprs)
 {
  adatum = SysCacheGetAttr(CONSTROID, tuple,
         Anum_pg_constraint_conffeqop, &isNull);
  if (isNull)
   elog(ERROR, "null conffeqop for constraint %u", constrId);
  arr = DatumGetArrayTypeP(adatum);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numkeys ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "conffeqop is not a 1-D Oid array");
  memcpy(ff_eq_oprs, ARR_DATA_PTR(arr), numkeys * sizeof(Oid));
  if ((Pointer) arr != DatumGetPointer(adatum))
   pfree(arr);
 }

 *numfks = numkeys;
}
