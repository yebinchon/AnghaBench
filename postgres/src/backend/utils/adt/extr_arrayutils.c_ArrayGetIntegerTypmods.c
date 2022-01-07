
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_ELEMTYPE (int *) ;
 int ARR_NDIM (int *) ;
 scalar_t__ CSTRINGOID ;
 int DatumGetCString (int ) ;
 int ERRCODE_ARRAY_ELEMENT_ERROR ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 scalar_t__ array_contains_nulls (int *) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,int **,int *,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int pg_strtoint32 (int ) ;

int32 *
ArrayGetIntegerTypmods(ArrayType *arr, int *n)
{
 int32 *result;
 Datum *elem_values;
 int i;

 if (ARR_ELEMTYPE(arr) != CSTRINGOID)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_ELEMENT_ERROR),
     errmsg("typmod array must be type cstring[]")));

 if (ARR_NDIM(arr) != 1)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("typmod array must be one-dimensional")));

 if (array_contains_nulls(arr))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("typmod array must not contain nulls")));


 deconstruct_array(arr, CSTRINGOID,
       -2, 0, 'c',
       &elem_values, ((void*)0), n);

 result = (int32 *) palloc(*n * sizeof(int32));

 for (i = 0; i < *n; i++)
  result[i] = pg_strtoint32(DatumGetCString(elem_values[i]));

 pfree(elem_values);

 return result;
}
