
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_proc_proargmodes ;
 int Anum_pg_proc_proargnames ;
 int Assert (int) ;
 scalar_t__ CHAROID ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 char PROARGMODE_IN ;
 char PROARGMODE_INOUT ;
 char PROARGMODE_OUT ;
 char PROARGMODE_TABLE ;
 char PROARGMODE_VARIADIC ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,int **,int *,int*) ;
 int elog (int ,char*,...) ;
 scalar_t__ heap_attisnull (int ,int ,int *) ;

char *
get_func_result_name(Oid functionId)
{
 char *result;
 HeapTuple procTuple;
 Datum proargmodes;
 Datum proargnames;
 bool isnull;
 ArrayType *arr;
 int numargs;
 char *argmodes;
 Datum *argnames;
 int numoutargs;
 int nargnames;
 int i;


 procTuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionId));
 if (!HeapTupleIsValid(procTuple))
  elog(ERROR, "cache lookup failed for function %u", functionId);


 if (heap_attisnull(procTuple, Anum_pg_proc_proargmodes, ((void*)0)) ||
  heap_attisnull(procTuple, Anum_pg_proc_proargnames, ((void*)0)))
  result = ((void*)0);
 else
 {

  proargmodes = SysCacheGetAttr(PROCOID, procTuple,
           Anum_pg_proc_proargmodes,
           &isnull);
  Assert(!isnull);
  proargnames = SysCacheGetAttr(PROCOID, procTuple,
           Anum_pg_proc_proargnames,
           &isnull);
  Assert(!isnull);







  arr = DatumGetArrayTypeP(proargmodes);
  numargs = ARR_DIMS(arr)[0];
  if (ARR_NDIM(arr) != 1 ||
   numargs < 0 ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != CHAROID)
   elog(ERROR, "proargmodes is not a 1-D char array");
  argmodes = (char *) ARR_DATA_PTR(arr);
  arr = DatumGetArrayTypeP(proargnames);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numargs ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != TEXTOID)
   elog(ERROR, "proargnames is not a 1-D text array");
  deconstruct_array(arr, TEXTOID, -1, 0, 'i',
        &argnames, ((void*)0), &nargnames);
  Assert(nargnames == numargs);


  result = ((void*)0);
  numoutargs = 0;
  for (i = 0; i < numargs; i++)
  {
   if (argmodes[i] == PROARGMODE_IN ||
    argmodes[i] == PROARGMODE_VARIADIC)
    continue;
   Assert(argmodes[i] == PROARGMODE_OUT ||
       argmodes[i] == PROARGMODE_INOUT ||
       argmodes[i] == PROARGMODE_TABLE);
   if (++numoutargs > 1)
   {

    result = ((void*)0);
    break;
   }
   result = TextDatumGetCString(argnames[i]);
   if (result == ((void*)0) || result[0] == '\0')
   {

    result = ((void*)0);
    break;
   }
  }
 }

 ReleaseSysCache(procTuple);

 return result;
}
