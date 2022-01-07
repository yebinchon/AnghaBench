
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ltree ;
typedef int PGCALL2 ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int,int ) ;
 scalar_t__ DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 void* NEXTVAL (void*) ;
 int PointerGetDatum (void*) ;
 scalar_t__ array_contains_nulls (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
array_iterator(ArrayType *la, PGCALL2 callback, void *param, ltree **found)
{
 int num = ArrayGetNItems(ARR_NDIM(la), ARR_DIMS(la));
 ltree *item = (ltree *) ARR_DATA_PTR(la);

 if (ARR_NDIM(la) > 1)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("array must be one-dimensional")));
 if (array_contains_nulls(la))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("array must not contain nulls")));

 if (found)
  *found = ((void*)0);
 while (num > 0)
 {
  if (DatumGetBool(DirectFunctionCall2(callback,
            PointerGetDatum(item), PointerGetDatum(param))))
  {

   if (found)
    *found = item;
   return 1;
  }
  num--;
  item = NEXTVAL(item);
 }

 return 0;
}
