
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ int32 ;
typedef int array_iter ;
struct TYPE_12__ {int fn_oid; } ;
struct TYPE_15__ {scalar_t__ type_id; int typlen; int typbyval; char typalign; TYPE_10__ cmp_proc_finfo; } ;
typedef TYPE_3__ TypeCacheEntry ;
struct TYPE_17__ {int isnull; TYPE_2__* args; } ;
struct TYPE_16__ {TYPE_1__* flinfo; } ;
struct TYPE_14__ {int isnull; void* value; } ;
struct TYPE_13__ {void* fn_extra; } ;
typedef scalar_t__ Oid ;
typedef TYPE_4__* FunctionCallInfo ;
typedef void* Datum ;
typedef int AnyArrayType ;


 int* AARR_DIMS (int *) ;
 scalar_t__ AARR_ELEMTYPE (int *) ;
 int AARR_FREE_IF_COPY (int *,int) ;
 int* AARR_LBOUND (int *) ;
 int AARR_NDIM (int *) ;
 int ArrayGetNItems (int,int*) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_6__*) ;
 int InitFunctionCallInfoData (TYPE_6__,TYPE_10__*,int,scalar_t__,int *,int *) ;
 int LOCAL_FCINFO (TYPE_6__*,int) ;
 int Min (int,int) ;
 int OidIsValid (int ) ;
 int * PG_GETARG_ANY_ARRAY_P (int) ;
 scalar_t__ PG_GET_COLLATION () ;
 int TYPECACHE_CMP_PROC_FINFO ;
 void* array_iter_next (int *,int*,int,int,int,char) ;
 int array_iter_setup (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int format_type_be (scalar_t__) ;
 TYPE_6__* locfcinfo ;
 TYPE_3__* lookup_type_cache (scalar_t__,int ) ;

__attribute__((used)) static int
array_cmp(FunctionCallInfo fcinfo)
{
 LOCAL_FCINFO(locfcinfo, 2);
 AnyArrayType *array1 = PG_GETARG_ANY_ARRAY_P(0);
 AnyArrayType *array2 = PG_GETARG_ANY_ARRAY_P(1);
 Oid collation = PG_GET_COLLATION();
 int ndims1 = AARR_NDIM(array1);
 int ndims2 = AARR_NDIM(array2);
 int *dims1 = AARR_DIMS(array1);
 int *dims2 = AARR_DIMS(array2);
 int nitems1 = ArrayGetNItems(ndims1, dims1);
 int nitems2 = ArrayGetNItems(ndims2, dims2);
 Oid element_type = AARR_ELEMTYPE(array1);
 int result = 0;
 TypeCacheEntry *typentry;
 int typlen;
 bool typbyval;
 char typalign;
 int min_nitems;
 array_iter it1;
 array_iter it2;
 int i;

 if (element_type != AARR_ELEMTYPE(array2))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("cannot compare arrays of different element types")));







 typentry = (TypeCacheEntry *) fcinfo->flinfo->fn_extra;
 if (typentry == ((void*)0) ||
  typentry->type_id != element_type)
 {
  typentry = lookup_type_cache(element_type,
          TYPECACHE_CMP_PROC_FINFO);
  if (!OidIsValid(typentry->cmp_proc_finfo.fn_oid))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_FUNCTION),
      errmsg("could not identify a comparison function for type %s",
       format_type_be(element_type))));
  fcinfo->flinfo->fn_extra = (void *) typentry;
 }
 typlen = typentry->typlen;
 typbyval = typentry->typbyval;
 typalign = typentry->typalign;




 InitFunctionCallInfoData(*locfcinfo, &typentry->cmp_proc_finfo, 2,
        collation, ((void*)0), ((void*)0));


 min_nitems = Min(nitems1, nitems2);
 array_iter_setup(&it1, array1);
 array_iter_setup(&it2, array2);

 for (i = 0; i < min_nitems; i++)
 {
  Datum elt1;
  Datum elt2;
  bool isnull1;
  bool isnull2;
  int32 cmpresult;


  elt1 = array_iter_next(&it1, &isnull1, i, typlen, typbyval, typalign);
  elt2 = array_iter_next(&it2, &isnull2, i, typlen, typbyval, typalign);




  if (isnull1 && isnull2)
   continue;
  if (isnull1)
  {

   result = 1;
   break;
  }
  if (isnull2)
  {

   result = -1;
   break;
  }


  locfcinfo->args[0].value = elt1;
  locfcinfo->args[0].isnull = 0;
  locfcinfo->args[1].value = elt2;
  locfcinfo->args[1].isnull = 0;
  locfcinfo->isnull = 0;
  cmpresult = DatumGetInt32(FunctionCallInvoke(locfcinfo));

  if (cmpresult == 0)
   continue;

  if (cmpresult < 0)
  {

   result = -1;
   break;
  }
  else
  {

   result = 1;
   break;
  }
 }







 if (result == 0)
 {
  if (nitems1 != nitems2)
   result = (nitems1 < nitems2) ? -1 : 1;
  else if (ndims1 != ndims2)
   result = (ndims1 < ndims2) ? -1 : 1;
  else
  {
   for (i = 0; i < ndims1; i++)
   {
    if (dims1[i] != dims2[i])
    {
     result = (dims1[i] < dims2[i]) ? -1 : 1;
     break;
    }
   }
   if (result == 0)
   {
    int *lbound1 = AARR_LBOUND(array1);
    int *lbound2 = AARR_LBOUND(array2);

    for (i = 0; i < ndims1; i++)
    {
     if (lbound1[i] != lbound2[i])
     {
      result = (lbound1[i] < lbound2[i]) ? -1 : 1;
      break;
     }
    }
   }
  }
 }


 AARR_FREE_IF_COPY(array1, 0);
 AARR_FREE_IF_COPY(array2, 1);

 return result;
}
