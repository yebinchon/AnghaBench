
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


typedef int array_iter ;
struct TYPE_18__ {int fn_oid; } ;
struct TYPE_20__ {scalar_t__ type_id; int typlen; int typbyval; char typalign; TYPE_13__ eq_opr_finfo; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_23__ {void** dvalues; int* dnulls; int nelems; } ;
struct TYPE_22__ {int isnull; TYPE_1__* args; } ;
struct TYPE_21__ {TYPE_6__ xpn; } ;
struct TYPE_19__ {int isnull; void* value; } ;
typedef scalar_t__ Oid ;
typedef void* Datum ;
typedef int ArrayType ;
typedef TYPE_3__ AnyArrayType ;


 int AARR_DIMS (TYPE_3__*) ;
 scalar_t__ AARR_ELEMTYPE (TYPE_3__*) ;
 int AARR_NDIM (TYPE_3__*) ;
 int ArrayGetNItems (int ,int ) ;
 int DatumGetBool (int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_5__*) ;
 int InitFunctionCallInfoData (TYPE_5__,TYPE_13__*,int,scalar_t__,int *,int *) ;
 int LOCAL_FCINFO (TYPE_5__*,int) ;
 int OidIsValid (int ) ;
 int TYPECACHE_EQ_OPR_FINFO ;
 scalar_t__ VARATT_IS_EXPANDED_HEADER (TYPE_3__*) ;
 void* array_iter_next (int *,int*,int,int,int,char) ;
 int array_iter_setup (int *,TYPE_3__*) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,void***,int**,int*) ;
 int deconstruct_expanded_array (TYPE_6__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int format_type_be (scalar_t__) ;
 TYPE_5__* locfcinfo ;
 TYPE_2__* lookup_type_cache (scalar_t__,int ) ;

__attribute__((used)) static bool
array_contain_compare(AnyArrayType *array1, AnyArrayType *array2, Oid collation,
       bool matchall, void **fn_extra)
{
 LOCAL_FCINFO(locfcinfo, 2);
 bool result = matchall;
 Oid element_type = AARR_ELEMTYPE(array1);
 TypeCacheEntry *typentry;
 int nelems1;
 Datum *values2;
 bool *nulls2;
 int nelems2;
 int typlen;
 bool typbyval;
 char typalign;
 int i;
 int j;
 array_iter it1;

 if (element_type != AARR_ELEMTYPE(array2))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("cannot compare arrays of different element types")));







 typentry = (TypeCacheEntry *) *fn_extra;
 if (typentry == ((void*)0) ||
  typentry->type_id != element_type)
 {
  typentry = lookup_type_cache(element_type,
          TYPECACHE_EQ_OPR_FINFO);
  if (!OidIsValid(typentry->eq_opr_finfo.fn_oid))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_FUNCTION),
      errmsg("could not identify an equality operator for type %s",
       format_type_be(element_type))));
  *fn_extra = (void *) typentry;
 }
 typlen = typentry->typlen;
 typbyval = typentry->typbyval;
 typalign = typentry->typalign;






 if (VARATT_IS_EXPANDED_HEADER(array2))
 {

  deconstruct_expanded_array(&(array2->xpn));
  values2 = array2->xpn.dvalues;
  nulls2 = array2->xpn.dnulls;
  nelems2 = array2->xpn.nelems;
 }
 else
  deconstruct_array((ArrayType *) array2,
        element_type, typlen, typbyval, typalign,
        &values2, &nulls2, &nelems2);




 InitFunctionCallInfoData(*locfcinfo, &typentry->eq_opr_finfo, 2,
        collation, ((void*)0), ((void*)0));


 nelems1 = ArrayGetNItems(AARR_NDIM(array1), AARR_DIMS(array1));
 array_iter_setup(&it1, array1);

 for (i = 0; i < nelems1; i++)
 {
  Datum elt1;
  bool isnull1;


  elt1 = array_iter_next(&it1, &isnull1, i, typlen, typbyval, typalign);






  if (isnull1)
  {
   if (matchall)
   {
    result = 0;
    break;
   }
   continue;
  }

  for (j = 0; j < nelems2; j++)
  {
   Datum elt2 = values2[j];
   bool isnull2 = nulls2 ? nulls2[j] : 0;
   bool oprresult;

   if (isnull2)
    continue;




   locfcinfo->args[0].value = elt1;
   locfcinfo->args[0].isnull = 0;
   locfcinfo->args[1].value = elt2;
   locfcinfo->args[1].isnull = 0;
   locfcinfo->isnull = 0;
   oprresult = DatumGetBool(FunctionCallInvoke(locfcinfo));
   if (oprresult)
    break;
  }

  if (j < nelems2)
  {

   if (!matchall)
   {
    result = 1;
    break;
   }
  }
  else
  {

   if (matchall)
   {
    result = 0;
    break;
   }
  }
 }

 return result;
}
