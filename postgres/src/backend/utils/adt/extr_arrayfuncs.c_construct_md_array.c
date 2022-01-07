
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_8__ {int ndim; int elemtype; scalar_t__ dataoffset; } ;
typedef int Oid ;
typedef int Datum ;
typedef TYPE_1__ ArrayType ;


 int ARR_DIMS (TYPE_1__*) ;
 int ARR_LBOUND (TYPE_1__*) ;
 scalar_t__ ARR_OVERHEAD_NONULLS (int) ;
 scalar_t__ ARR_OVERHEAD_WITHNULLS (int,int) ;
 int AllocSizeIsValid (scalar_t__) ;
 int ArrayGetNItems (int,int*) ;
 int CopyArrayEls (TYPE_1__*,int *,int*,int,int,int,char,int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MAXDIM ;
 scalar_t__ MaxAllocSize ;
 int PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int ) ;
 int SET_VARSIZE (TYPE_1__*,scalar_t__) ;
 scalar_t__ att_addlength_datum (scalar_t__,int,int ) ;
 scalar_t__ att_align_nominal (scalar_t__,char) ;
 TYPE_1__* construct_empty_array (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,...) ;
 int memcpy (int ,int*,int) ;
 scalar_t__ palloc0 (scalar_t__) ;

ArrayType *
construct_md_array(Datum *elems,
       bool *nulls,
       int ndims,
       int *dims,
       int *lbs,
       Oid elmtype, int elmlen, bool elmbyval, char elmalign)
{
 ArrayType *result;
 bool hasnulls;
 int32 nbytes;
 int32 dataoffset;
 int i;
 int nelems;

 if (ndims < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid number of dimensions: %d", ndims)));
 if (ndims > MAXDIM)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
      ndims, MAXDIM)));

 nelems = ArrayGetNItems(ndims, dims);


 if (nelems <= 0)
  return construct_empty_array(elmtype);


 nbytes = 0;
 hasnulls = 0;
 for (i = 0; i < nelems; i++)
 {
  if (nulls && nulls[i])
  {
   hasnulls = 1;
   continue;
  }

  if (elmlen == -1)
   elems[i] = PointerGetDatum(PG_DETOAST_DATUM(elems[i]));
  nbytes = att_addlength_datum(nbytes, elmlen, elems[i]);
  nbytes = att_align_nominal(nbytes, elmalign);

  if (!AllocSizeIsValid(nbytes))
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("array size exceeds the maximum allowed (%d)",
       (int) MaxAllocSize)));
 }


 if (hasnulls)
 {
  dataoffset = ARR_OVERHEAD_WITHNULLS(ndims, nelems);
  nbytes += dataoffset;
 }
 else
 {
  dataoffset = 0;
  nbytes += ARR_OVERHEAD_NONULLS(ndims);
 }
 result = (ArrayType *) palloc0(nbytes);
 SET_VARSIZE(result, nbytes);
 result->ndim = ndims;
 result->dataoffset = dataoffset;
 result->elemtype = elmtype;
 memcpy(ARR_DIMS(result), dims, ndims * sizeof(int));
 memcpy(ARR_LBOUND(result), lbs, ndims * sizeof(int));

 CopyArrayEls(result,
     elems, nulls, nelems,
     elmlen, elmbyval, elmalign,
     0);

 return result;
}
