
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 scalar_t__ CHAROID ;
 int * DatumGetArrayTypeP (scalar_t__) ;
 int ERROR ;
 char PROARGMODE_IN ;
 char PROARGMODE_INOUT ;
 char PROARGMODE_VARIADIC ;
 scalar_t__ PointerGetDatum (int *) ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (scalar_t__) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,scalar_t__**,int *,int*) ;
 int elog (int ,char*) ;
 scalar_t__ palloc (int) ;

int
get_func_input_arg_names(Datum proargnames, Datum proargmodes,
       char ***arg_names)
{
 ArrayType *arr;
 int numargs;
 Datum *argnames;
 char *argmodes;
 char **inargnames;
 int numinargs;
 int i;


 if (proargnames == PointerGetDatum(((void*)0)))
 {
  *arg_names = ((void*)0);
  return 0;
 }






 arr = DatumGetArrayTypeP(proargnames);
 if (ARR_NDIM(arr) != 1 ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != TEXTOID)
  elog(ERROR, "proargnames is not a 1-D text array");
 deconstruct_array(arr, TEXTOID, -1, 0, 'i',
       &argnames, ((void*)0), &numargs);
 if (proargmodes != PointerGetDatum(((void*)0)))
 {
  arr = DatumGetArrayTypeP(proargmodes);
  if (ARR_NDIM(arr) != 1 ||
   ARR_DIMS(arr)[0] != numargs ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != CHAROID)
   elog(ERROR, "proargmodes is not a 1-D char array");
  argmodes = (char *) ARR_DATA_PTR(arr);
 }
 else
  argmodes = ((void*)0);


 if (numargs <= 0)
 {
  *arg_names = ((void*)0);
  return 0;
 }


 inargnames = (char **) palloc(numargs * sizeof(char *));
 numinargs = 0;
 for (i = 0; i < numargs; i++)
 {
  if (argmodes == ((void*)0) ||
   argmodes[i] == PROARGMODE_IN ||
   argmodes[i] == PROARGMODE_INOUT ||
   argmodes[i] == PROARGMODE_VARIADIC)
  {
   char *pname = TextDatumGetCString(argnames[i]);

   if (pname[0] != '\0')
    inargnames[numinargs] = pname;
   else
    inargnames[numinargs] = ((void*)0);
   numinargs++;
  }
 }

 *arg_names = inargnames;
 return numinargs;
}
