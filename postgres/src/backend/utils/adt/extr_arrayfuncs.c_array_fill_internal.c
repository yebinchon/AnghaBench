
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {scalar_t__ element_type; int typlen; int typbyval; char typalign; } ;
struct TYPE_6__ {TYPE_1__* flinfo; } ;
struct TYPE_5__ {scalar_t__ fn_extra; int fn_mcxt; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_3__ ArrayMetaState ;


 char* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 scalar_t__ ARR_OVERHEAD_NONULLS (int) ;
 int ARR_OVERHEAD_WITHNULLS (int,int) ;
 int AllocSizeIsValid (int) ;
 int ArrayCastAndSet (int ,int,int,char,char*) ;
 int ArrayGetNItems (int,int*) ;
 int Assert (int) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int MAXDIM ;
 scalar_t__ MaxAllocSize ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int ) ;
 scalar_t__ array_contains_nulls (int *) ;
 int att_addlength_datum (int ,int,int ) ;
 int att_align_nominal (int,char) ;
 int * construct_empty_array (scalar_t__) ;
 int * create_array_envelope (int,int*,int*,int,scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,...) ;
 int get_typlenbyvalalign (scalar_t__,int*,int*,char*) ;

__attribute__((used)) static ArrayType *
array_fill_internal(ArrayType *dims, ArrayType *lbs,
     Datum value, bool isnull, Oid elmtype,
     FunctionCallInfo fcinfo)
{
 ArrayType *result;
 int *dimv;
 int *lbsv;
 int ndims;
 int nitems;
 int deflbs[MAXDIM];
 int16 elmlen;
 bool elmbyval;
 char elmalign;
 ArrayMetaState *my_extra;




 if (ARR_NDIM(dims) > 1)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("wrong number of array subscripts"),
     errdetail("Dimension array must be one dimensional.")));

 if (array_contains_nulls(dims))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("dimension values cannot be null")));

 dimv = (int *) ARR_DATA_PTR(dims);
 ndims = (ARR_NDIM(dims) > 0) ? ARR_DIMS(dims)[0] : 0;

 if (ndims < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid number of dimensions: %d", ndims)));
 if (ndims > MAXDIM)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
      ndims, MAXDIM)));

 if (lbs != ((void*)0))
 {
  if (ARR_NDIM(lbs) > 1)
   ereport(ERROR,
     (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
      errmsg("wrong number of array subscripts"),
      errdetail("Dimension array must be one dimensional.")));

  if (array_contains_nulls(lbs))
   ereport(ERROR,
     (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("dimension values cannot be null")));

  if (ndims != ((ARR_NDIM(lbs) > 0) ? ARR_DIMS(lbs)[0] : 0))
   ereport(ERROR,
     (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
      errmsg("wrong number of array subscripts"),
      errdetail("Low bound array has different size than dimensions array.")));

  lbsv = (int *) ARR_DATA_PTR(lbs);
 }
 else
 {
  int i;

  for (i = 0; i < MAXDIM; i++)
   deflbs[i] = 1;

  lbsv = deflbs;
 }

 nitems = ArrayGetNItems(ndims, dimv);


 if (nitems <= 0)
  return construct_empty_array(elmtype);





 my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
 if (my_extra == ((void*)0))
 {
  fcinfo->flinfo->fn_extra = MemoryContextAlloc(fcinfo->flinfo->fn_mcxt,
               sizeof(ArrayMetaState));
  my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
  my_extra->element_type = InvalidOid;
 }

 if (my_extra->element_type != elmtype)
 {

  get_typlenbyvalalign(elmtype,
        &my_extra->typlen,
        &my_extra->typbyval,
        &my_extra->typalign);
  my_extra->element_type = elmtype;
 }

 elmlen = my_extra->typlen;
 elmbyval = my_extra->typbyval;
 elmalign = my_extra->typalign;


 if (!isnull)
 {
  int i;
  char *p;
  int nbytes;
  int totbytes;


  if (elmlen == -1)
   value = PointerGetDatum(PG_DETOAST_DATUM(value));

  nbytes = att_addlength_datum(0, elmlen, value);
  nbytes = att_align_nominal(nbytes, elmalign);
  Assert(nbytes > 0);

  totbytes = nbytes * nitems;


  if (totbytes / nbytes != nitems ||
   !AllocSizeIsValid(totbytes))
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("array size exceeds the maximum allowed (%d)",
       (int) MaxAllocSize)));





  totbytes += ARR_OVERHEAD_NONULLS(ndims);

  result = create_array_envelope(ndims, dimv, lbsv, totbytes,
            elmtype, 0);

  p = ARR_DATA_PTR(result);
  for (i = 0; i < nitems; i++)
   p += ArrayCastAndSet(value, elmlen, elmbyval, elmalign, p);
 }
 else
 {
  int nbytes;
  int dataoffset;

  dataoffset = ARR_OVERHEAD_WITHNULLS(ndims, nitems);
  nbytes = dataoffset;

  result = create_array_envelope(ndims, dimv, lbsv, nbytes,
            elmtype, dataoffset);


 }

 return result;
}
