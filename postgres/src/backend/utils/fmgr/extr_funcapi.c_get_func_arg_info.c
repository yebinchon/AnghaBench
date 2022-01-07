
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dim1; int values; } ;
struct TYPE_4__ {int pronargs; TYPE_1__ proargtypes; } ;
typedef char Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef int Datum ;
typedef int ArrayType ;


 int ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_proc_proallargtypes ;
 int Anum_pg_proc_proargmodes ;
 int Anum_pg_proc_proargnames ;
 int Assert (int) ;
 scalar_t__ CHAROID ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ OIDOID ;
 int PROCOID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int *,int*) ;
 int elog (int ,char*) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ palloc (int) ;

int
get_func_arg_info(HeapTuple procTup,
      Oid **p_argtypes, char ***p_argnames, char **p_argmodes)
{
 Form_pg_proc procStruct = (Form_pg_proc) GETSTRUCT(procTup);
 Datum proallargtypes;
 Datum proargmodes;
 Datum proargnames;
 bool isNull;
 ArrayType *arr;
 int numargs;
 Datum *elems;
 int nelems;
 int i;


 proallargtypes = SysCacheGetAttr(PROCOID, procTup,
          Anum_pg_proc_proallargtypes,
          &isNull);
 if (!isNull)
 {






  arr = DatumGetArrayTypeP(proallargtypes);
  numargs = ARR_DIMS(arr)[0];
  if (ARR_NDIM(arr) != 1 ||
   numargs < 0 ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != OIDOID)
   elog(ERROR, "proallargtypes is not a 1-D Oid array");
  Assert(numargs >= procStruct->pronargs);
  *p_argtypes = (Oid *) palloc(numargs * sizeof(Oid));
  memcpy(*p_argtypes, ARR_DATA_PTR(arr),
      numargs * sizeof(Oid));
 }
 else
 {

  numargs = procStruct->proargtypes.dim1;
  Assert(numargs == procStruct->pronargs);
  *p_argtypes = (Oid *) palloc(numargs * sizeof(Oid));
  memcpy(*p_argtypes, procStruct->proargtypes.values,
      numargs * sizeof(Oid));
 }


 proargnames = SysCacheGetAttr(PROCOID, procTup,
          Anum_pg_proc_proargnames,
          &isNull);
 if (isNull)
  *p_argnames = ((void*)0);
 else
 {
  deconstruct_array(DatumGetArrayTypeP(proargnames),
        TEXTOID, -1, 0, 'i',
        &elems, ((void*)0), &nelems);
  if (nelems != numargs)
   elog(ERROR, "proargnames must have the same number of elements as the function has arguments");
  *p_argnames = (char **) palloc(sizeof(char *) * numargs);
  for (i = 0; i < numargs; i++)
   (*p_argnames)[i] = TextDatumGetCString(elems[i]);
 }


 proargmodes = SysCacheGetAttr(PROCOID, procTup,
          Anum_pg_proc_proargmodes,
          &isNull);
 if (isNull)
  *p_argmodes = ((void*)0);
 else
 {
  arr = DatumGetArrayTypeP(proargmodes);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numargs ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != CHAROID)
   elog(ERROR, "proargmodes is not a 1-D char array");
  *p_argmodes = (char *) palloc(numargs * sizeof(char));
  memcpy(*p_argmodes, ARR_DATA_PTR(arr),
      numargs * sizeof(char));
 }

 return numargs;
}
