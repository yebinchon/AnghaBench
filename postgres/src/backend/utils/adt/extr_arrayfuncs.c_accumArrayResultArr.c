
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char bits8 ;
struct TYPE_5__ {scalar_t__ array_type; int ndims; char* dims; int* lbs; int abytes; char* data; int nbytes; char* nullbitmap; int nitems; int aitems; int mcontext; } ;
typedef scalar_t__ Pointer ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_1__ ArrayBuildStateArr ;


 int ARR_DATA_OFFSET (int *) ;
 char* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int* ARR_LBOUND (int *) ;
 int ARR_NDIM (int *) ;
 int * ARR_NULLBITMAP (int *) ;
 int ARR_SIZE (int *) ;
 int ArrayGetNItems (int,int*) ;
 int Assert (int) ;
 int * DatumGetArrayTypeP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int InvalidOid ;
 int MAXDIM ;
 void* Max (int,int) ;
 int MemoryContextSwitchTo (int ) ;
 int array_bitmap_copy (char*,int,int *,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_1__* initArrayResultArr (scalar_t__,int ,int ,int) ;
 int memcpy (char*,...) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 scalar_t__ repalloc (char*,int) ;

ArrayBuildStateArr *
accumArrayResultArr(ArrayBuildStateArr *astate,
     Datum dvalue, bool disnull,
     Oid array_type,
     MemoryContext rcontext)
{
 ArrayType *arg;
 MemoryContext oldcontext;
 int *dims,
      *lbs,
    ndims,
    nitems,
    ndatabytes;
 char *data;
 int i;






 if (disnull)
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("cannot accumulate null arrays")));


 arg = DatumGetArrayTypeP(dvalue);

 if (astate == ((void*)0))
  astate = initArrayResultArr(array_type, InvalidOid, rcontext, 1);
 else
  Assert(astate->array_type == array_type);

 oldcontext = MemoryContextSwitchTo(astate->mcontext);


 ndims = ARR_NDIM(arg);
 dims = ARR_DIMS(arg);
 lbs = ARR_LBOUND(arg);
 data = ARR_DATA_PTR(arg);
 nitems = ArrayGetNItems(ndims, dims);
 ndatabytes = ARR_SIZE(arg) - ARR_DATA_OFFSET(arg);

 if (astate->ndims == 0)
 {



  if (ndims == 0)
   ereport(ERROR,
     (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
      errmsg("cannot accumulate empty arrays")));
  if (ndims + 1 > MAXDIM)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
       ndims + 1, MAXDIM)));





  astate->ndims = ndims + 1;
  astate->dims[0] = 0;
  memcpy(&astate->dims[1], dims, ndims * sizeof(int));
  astate->lbs[0] = 1;
  memcpy(&astate->lbs[1], lbs, ndims * sizeof(int));


  astate->abytes = 1024;
  while (astate->abytes <= ndatabytes)
   astate->abytes *= 2;
  astate->data = (char *) palloc(astate->abytes);
 }
 else
 {

  if (astate->ndims != ndims + 1)
   ereport(ERROR,
     (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
      errmsg("cannot accumulate arrays of different dimensionality")));
  for (i = 0; i < ndims; i++)
  {
   if (astate->dims[i + 1] != dims[i] || astate->lbs[i + 1] != lbs[i])
    ereport(ERROR,
      (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
       errmsg("cannot accumulate arrays of different dimensionality")));
  }


  if (astate->nbytes + ndatabytes > astate->abytes)
  {
   astate->abytes = Max(astate->abytes * 2,
         astate->nbytes + ndatabytes);
   astate->data = (char *) repalloc(astate->data, astate->abytes);
  }
 }







 memcpy(astate->data + astate->nbytes, data, ndatabytes);
 astate->nbytes += ndatabytes;


 if (astate->nullbitmap || ARR_HASNULL(arg))
 {
  int newnitems = astate->nitems + nitems;

  if (astate->nullbitmap == ((void*)0))
  {




   astate->aitems = 256;
   while (astate->aitems <= newnitems)
    astate->aitems *= 2;
   astate->nullbitmap = (bits8 *) palloc((astate->aitems + 7) / 8);
   array_bitmap_copy(astate->nullbitmap, 0,
         ((void*)0), 0,
         astate->nitems);
  }
  else if (newnitems > astate->aitems)
  {
   astate->aitems = Max(astate->aitems * 2, newnitems);
   astate->nullbitmap = (bits8 *)
    repalloc(astate->nullbitmap, (astate->aitems + 7) / 8);
  }
  array_bitmap_copy(astate->nullbitmap, astate->nitems,
        ARR_NULLBITMAP(arg), 0,
        nitems);
 }

 astate->nitems += nitems;
 astate->dims[0] += 1;

 MemoryContextSwitchTo(oldcontext);


 if ((Pointer) arg != DatumGetPointer(dvalue))
  pfree(arg);

 return astate;
}
