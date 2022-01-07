
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int bits8 ;
struct TYPE_13__ {int ndim; int elemtype; scalar_t__ dataoffset; } ;
typedef int Oid ;
typedef int Datum ;
typedef TYPE_1__ ArrayType ;


 char* ARR_DATA_PTR (TYPE_1__*) ;
 int* ARR_DIMS (TYPE_1__*) ;
 int ARR_ELEMTYPE (TYPE_1__*) ;
 int* ARR_LBOUND (TYPE_1__*) ;
 int ARR_NDIM (TYPE_1__*) ;
 int * ARR_NULLBITMAP (TYPE_1__*) ;
 scalar_t__ ARR_OVERHEAD_NONULLS (int) ;
 scalar_t__ ARR_OVERHEAD_WITHNULLS (int,int ) ;
 int ArrayGetNItems (int,int*) ;
 TYPE_1__* DatumGetArrayTypeP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int InvalidOid ;
 int MAXDIM ;
 int PointerGetDatum (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int array_extract_slice (TYPE_1__*,int,int*,int*,char*,int *,int*,int*,int,int,char) ;
 int array_slice_size (char*,int *,int,int*,int*,int*,int*,int,int,char) ;
 TYPE_1__* construct_empty_array (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int mda_get_range (int,int*,int*,int*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ palloc0 (int) ;

Datum
array_get_slice(Datum arraydatum,
    int nSubscripts,
    int *upperIndx,
    int *lowerIndx,
    bool *upperProvided,
    bool *lowerProvided,
    int arraytyplen,
    int elmlen,
    bool elmbyval,
    char elmalign)
{
 ArrayType *array;
 ArrayType *newarray;
 int i,
    ndim,
      *dim,
      *lb,
      *newlb;
 int fixedDim[1],
    fixedLb[1];
 Oid elemtype;
 char *arraydataptr;
 bits8 *arraynullsptr;
 int32 dataoffset;
 int bytes,
    span[MAXDIM];

 if (arraytyplen > 0)
 {






  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("slices of fixed-length arrays not implemented")));






  ndim = 1;
  fixedDim[0] = arraytyplen / elmlen;
  fixedLb[0] = 0;
  dim = fixedDim;
  lb = fixedLb;
  elemtype = InvalidOid;
  arraydataptr = (char *) DatumGetPointer(arraydatum);
  arraynullsptr = ((void*)0);
 }
 else
 {

  array = DatumGetArrayTypeP(arraydatum);

  ndim = ARR_NDIM(array);
  dim = ARR_DIMS(array);
  lb = ARR_LBOUND(array);
  elemtype = ARR_ELEMTYPE(array);
  arraydataptr = ARR_DATA_PTR(array);
  arraynullsptr = ARR_NULLBITMAP(array);
 }






 if (ndim < nSubscripts || ndim <= 0 || ndim > MAXDIM)
  return PointerGetDatum(construct_empty_array(elemtype));

 for (i = 0; i < nSubscripts; i++)
 {
  if (!lowerProvided[i] || lowerIndx[i] < lb[i])
   lowerIndx[i] = lb[i];
  if (!upperProvided[i] || upperIndx[i] >= (dim[i] + lb[i]))
   upperIndx[i] = dim[i] + lb[i] - 1;
  if (lowerIndx[i] > upperIndx[i])
   return PointerGetDatum(construct_empty_array(elemtype));
 }

 for (; i < ndim; i++)
 {
  lowerIndx[i] = lb[i];
  upperIndx[i] = dim[i] + lb[i] - 1;
  if (lowerIndx[i] > upperIndx[i])
   return PointerGetDatum(construct_empty_array(elemtype));
 }

 mda_get_range(ndim, span, lowerIndx, upperIndx);

 bytes = array_slice_size(arraydataptr, arraynullsptr,
        ndim, dim, lb,
        lowerIndx, upperIndx,
        elmlen, elmbyval, elmalign);





 if (arraynullsptr)
 {
  dataoffset = ARR_OVERHEAD_WITHNULLS(ndim, ArrayGetNItems(ndim, span));
  bytes += dataoffset;
 }
 else
 {
  dataoffset = 0;
  bytes += ARR_OVERHEAD_NONULLS(ndim);
 }

 newarray = (ArrayType *) palloc0(bytes);
 SET_VARSIZE(newarray, bytes);
 newarray->ndim = ndim;
 newarray->dataoffset = dataoffset;
 newarray->elemtype = elemtype;
 memcpy(ARR_DIMS(newarray), span, ndim * sizeof(int));





 newlb = ARR_LBOUND(newarray);
 for (i = 0; i < ndim; i++)
  newlb[i] = 1;

 array_extract_slice(newarray,
      ndim, dim, lb,
      arraydataptr, arraynullsptr,
      lowerIndx, upperIndx,
      elmlen, elmbyval, elmalign);

 return PointerGetDatum(newarray);
}
