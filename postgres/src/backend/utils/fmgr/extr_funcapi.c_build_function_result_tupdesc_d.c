
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * TupleDesc ;
typedef int Oid ;
typedef scalar_t__ Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Assert (int) ;
 scalar_t__ CHAROID ;
 int * CreateTemplateTupleDesc (int) ;
 int * DatumGetArrayTypeP (scalar_t__) ;
 int ERROR ;
 scalar_t__ OIDOID ;
 char PROARGMODE_IN ;
 char PROARGMODE_INOUT ;
 char PROARGMODE_OUT ;
 char PROARGMODE_TABLE ;
 char PROARGMODE_VARIADIC ;
 char PROKIND_PROCEDURE ;
 scalar_t__ PointerGetDatum (int *) ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (scalar_t__) ;
 int TupleDescInitEntry (int *,int,char*,int ,int,int ) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,scalar_t__**,int *,int*) ;
 int elog (int ,char*) ;
 scalar_t__ palloc (int) ;
 char* psprintf (char*,int) ;

TupleDesc
build_function_result_tupdesc_d(char prokind,
        Datum proallargtypes,
        Datum proargmodes,
        Datum proargnames)
{
 TupleDesc desc;
 ArrayType *arr;
 int numargs;
 Oid *argtypes;
 char *argmodes;
 Datum *argnames = ((void*)0);
 Oid *outargtypes;
 char **outargnames;
 int numoutargs;
 int nargnames;
 int i;


 if (proallargtypes == PointerGetDatum(((void*)0)) ||
  proargmodes == PointerGetDatum(((void*)0)))
  return ((void*)0);






 arr = DatumGetArrayTypeP(proallargtypes);
 numargs = ARR_DIMS(arr)[0];
 if (ARR_NDIM(arr) != 1 ||
  numargs < 0 ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != OIDOID)
  elog(ERROR, "proallargtypes is not a 1-D Oid array");
 argtypes = (Oid *) ARR_DATA_PTR(arr);
 arr = DatumGetArrayTypeP(proargmodes);
 if (ARR_NDIM(arr) != 1 ||
  ARR_DIMS(arr)[0] != numargs ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != CHAROID)
  elog(ERROR, "proargmodes is not a 1-D char array");
 argmodes = (char *) ARR_DATA_PTR(arr);
 if (proargnames != PointerGetDatum(((void*)0)))
 {
  arr = DatumGetArrayTypeP(proargnames);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numargs ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != TEXTOID)
   elog(ERROR, "proargnames is not a 1-D text array");
  deconstruct_array(arr, TEXTOID, -1, 0, 'i',
        &argnames, ((void*)0), &nargnames);
  Assert(nargnames == numargs);
 }


 if (numargs <= 0)
  return ((void*)0);


 outargtypes = (Oid *) palloc(numargs * sizeof(Oid));
 outargnames = (char **) palloc(numargs * sizeof(char *));
 numoutargs = 0;
 for (i = 0; i < numargs; i++)
 {
  char *pname;

  if (argmodes[i] == PROARGMODE_IN ||
   argmodes[i] == PROARGMODE_VARIADIC)
   continue;
  Assert(argmodes[i] == PROARGMODE_OUT ||
      argmodes[i] == PROARGMODE_INOUT ||
      argmodes[i] == PROARGMODE_TABLE);
  outargtypes[numoutargs] = argtypes[i];
  if (argnames)
   pname = TextDatumGetCString(argnames[i]);
  else
   pname = ((void*)0);
  if (pname == ((void*)0) || pname[0] == '\0')
  {

   pname = psprintf("column%d", numoutargs + 1);
  }
  outargnames[numoutargs] = pname;
  numoutargs++;
 }





 if (numoutargs < 2 && prokind != PROKIND_PROCEDURE)
  return ((void*)0);

 desc = CreateTemplateTupleDesc(numoutargs);
 for (i = 0; i < numoutargs; i++)
 {
  TupleDescInitEntry(desc, i + 1,
         outargnames[i],
         outargtypes[i],
         -1,
         0);
 }

 return desc;
}
