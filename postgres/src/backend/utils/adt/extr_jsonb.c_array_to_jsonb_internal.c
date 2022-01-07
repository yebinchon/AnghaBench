
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int parseState; void* res; } ;
typedef int Oid ;
typedef int JsonbTypeCategory ;
typedef TYPE_1__ JsonbInState ;
typedef int Datum ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int ARR_ELEMTYPE (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int,int*) ;
 int * DatumGetArrayTypeP (int) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_END_ARRAY ;
 int array_dim_to_jsonb (TYPE_1__*,int ,int,int*,int*,int*,int*,int ,int ) ;
 int deconstruct_array (int *,int ,int ,int,char,int**,int**,int*) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;
 int jsonb_categorize_type (int ,int *,int *) ;
 int pfree (int*) ;
 void* pushJsonbValue (int *,int ,int *) ;

__attribute__((used)) static void
array_to_jsonb_internal(Datum array, JsonbInState *result)
{
 ArrayType *v = DatumGetArrayTypeP(array);
 Oid element_type = ARR_ELEMTYPE(v);
 int *dim;
 int ndim;
 int nitems;
 int count = 0;
 Datum *elements;
 bool *nulls;
 int16 typlen;
 bool typbyval;
 char typalign;
 JsonbTypeCategory tcategory;
 Oid outfuncoid;

 ndim = ARR_NDIM(v);
 dim = ARR_DIMS(v);
 nitems = ArrayGetNItems(ndim, dim);

 if (nitems <= 0)
 {
  result->res = pushJsonbValue(&result->parseState, WJB_BEGIN_ARRAY, ((void*)0));
  result->res = pushJsonbValue(&result->parseState, WJB_END_ARRAY, ((void*)0));
  return;
 }

 get_typlenbyvalalign(element_type,
       &typlen, &typbyval, &typalign);

 jsonb_categorize_type(element_type,
        &tcategory, &outfuncoid);

 deconstruct_array(v, element_type, typlen, typbyval,
       typalign, &elements, &nulls,
       &nitems);

 array_dim_to_jsonb(result, 0, ndim, dim, elements, nulls, &count, tcategory,
        outfuncoid);

 pfree(elements);
 pfree(nulls);
}
