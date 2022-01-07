
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,int **,int *,int*) ;
 int elog (int ,char*) ;
 char** palloc (int) ;
 int pfree (int *) ;

__attribute__((used)) static int
DecodeTextArrayToCString(Datum array, char ***cstringp)
{
 ArrayType *arr = DatumGetArrayTypeP(array);
 Datum *elems;
 char **cstring;
 int i;
 int nelems;

 if (ARR_NDIM(arr) != 1 || ARR_HASNULL(arr) || ARR_ELEMTYPE(arr) != TEXTOID)
  elog(ERROR, "expected 1-D text array");
 deconstruct_array(arr, TEXTOID, -1, 0, 'i', &elems, ((void*)0), &nelems);

 cstring = palloc(nelems * sizeof(char *));
 for (i = 0; i < nelems; ++i)
  cstring[i] = TextDatumGetCString(elems[i]);

 pfree(elems);
 *cstringp = cstring;
 return nelems;
}
