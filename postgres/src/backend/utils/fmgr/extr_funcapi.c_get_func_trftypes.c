
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pronargs; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef int Datum ;
typedef int ArrayType ;


 int ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_proc_protrftypes ;
 int Assert (int) ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ OIDOID ;
 int PROCOID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ palloc (int) ;

int
get_func_trftypes(HeapTuple procTup,
      Oid **p_trftypes)
{
 Datum protrftypes;
 ArrayType *arr;
 int nelems;
 bool isNull;

 protrftypes = SysCacheGetAttr(PROCOID, procTup,
          Anum_pg_proc_protrftypes,
          &isNull);
 if (!isNull)
 {






  arr = DatumGetArrayTypeP(protrftypes);
  nelems = ARR_DIMS(arr)[0];
  if (ARR_NDIM(arr) != 1 ||
   nelems < 0 ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "protrftypes is not a 1-D Oid array");
  Assert(nelems >= ((Form_pg_proc) GETSTRUCT(procTup))->pronargs);
  *p_trftypes = (Oid *) palloc(nelems * sizeof(Oid));
  memcpy(*p_trftypes, ARR_DATA_PTR(arr),
      nelems * sizeof(Oid));

  return nelems;
 }
 else
  return 0;
}
