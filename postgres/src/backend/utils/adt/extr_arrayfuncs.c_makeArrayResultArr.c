
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int ndims; int nbytes; int mcontext; int private_cxt; int nitems; int * nullbitmap; int data; int lbs; int dims; int element_type; } ;
struct TYPE_11__ {int ndim; int dataoffset; int elemtype; } ;
typedef int MemoryContext ;
typedef int Datum ;
typedef TYPE_1__ ArrayType ;
typedef TYPE_2__ ArrayBuildStateArr ;


 int ARR_DATA_PTR (TYPE_1__*) ;
 int ARR_DIMS (TYPE_1__*) ;
 int ARR_LBOUND (TYPE_1__*) ;
 int ARR_NULLBITMAP (TYPE_1__*) ;
 scalar_t__ ARR_OVERHEAD_NONULLS (int) ;
 int ARR_OVERHEAD_WITHNULLS (int,int ) ;
 int Assert (int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int array_bitmap_copy (int ,int ,int *,int ,int ) ;
 TYPE_1__* construct_empty_array (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ palloc0 (int) ;

Datum
makeArrayResultArr(ArrayBuildStateArr *astate,
       MemoryContext rcontext,
       bool release)
{
 ArrayType *result;
 MemoryContext oldcontext;


 oldcontext = MemoryContextSwitchTo(rcontext);

 if (astate->ndims == 0)
 {

  result = construct_empty_array(astate->element_type);
 }
 else
 {
  int dataoffset,
     nbytes;


  nbytes = astate->nbytes;
  if (astate->nullbitmap != ((void*)0))
  {
   dataoffset = ARR_OVERHEAD_WITHNULLS(astate->ndims, astate->nitems);
   nbytes += dataoffset;
  }
  else
  {
   dataoffset = 0;
   nbytes += ARR_OVERHEAD_NONULLS(astate->ndims);
  }

  result = (ArrayType *) palloc0(nbytes);
  SET_VARSIZE(result, nbytes);
  result->ndim = astate->ndims;
  result->dataoffset = dataoffset;
  result->elemtype = astate->element_type;

  memcpy(ARR_DIMS(result), astate->dims, astate->ndims * sizeof(int));
  memcpy(ARR_LBOUND(result), astate->lbs, astate->ndims * sizeof(int));
  memcpy(ARR_DATA_PTR(result), astate->data, astate->nbytes);

  if (astate->nullbitmap != ((void*)0))
   array_bitmap_copy(ARR_NULLBITMAP(result), 0,
         astate->nullbitmap, 0,
         astate->nitems);
 }

 MemoryContextSwitchTo(oldcontext);


 if (release)
 {
  Assert(astate->private_cxt);
  MemoryContextDelete(astate->mcontext);
 }

 return PointerGetDatum(result);
}
