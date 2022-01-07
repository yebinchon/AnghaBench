
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;
typedef int ArrayType ;


 char* ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int * ARR_NULLBITMAP (int *) ;
 int ArrayGetNItems (int ,int ) ;
 int ArrayGetOffset (int,int*,int*,int*) ;
 int MAXDIM ;
 int array_bitmap_copy (int *,int,int *,int,int) ;
 int array_copy (char*,int,char*,int,int *,int,int,char) ;
 char* array_seek (char*,int,int *,int,int,int,char) ;
 int mda_get_offset_values (int,int*,int*,int*) ;
 int mda_get_prod (int,int*,int*) ;
 int mda_get_range (int,int*,int*,int*) ;
 int mda_next_tuple (int,int*,int*) ;

__attribute__((used)) static void
array_insert_slice(ArrayType *destArray,
       ArrayType *origArray,
       ArrayType *srcArray,
       int ndim,
       int *dim,
       int *lb,
       int *st,
       int *endp,
       int typlen,
       bool typbyval,
       char typalign)
{
 char *destPtr = ARR_DATA_PTR(destArray);
 char *origPtr = ARR_DATA_PTR(origArray);
 char *srcPtr = ARR_DATA_PTR(srcArray);
 bits8 *destBitmap = ARR_NULLBITMAP(destArray);
 bits8 *origBitmap = ARR_NULLBITMAP(origArray);
 bits8 *srcBitmap = ARR_NULLBITMAP(srcArray);
 int orignitems = ArrayGetNItems(ARR_NDIM(origArray),
           ARR_DIMS(origArray));
 int dest_offset,
    orig_offset,
    src_offset,
    prod[MAXDIM],
    span[MAXDIM],
    dist[MAXDIM],
    indx[MAXDIM];
 int i,
    j,
    inc;

 dest_offset = ArrayGetOffset(ndim, dim, lb, st);

 inc = array_copy(destPtr, dest_offset,
      origPtr, 0, origBitmap,
      typlen, typbyval, typalign);
 destPtr += inc;
 origPtr += inc;
 if (destBitmap)
  array_bitmap_copy(destBitmap, 0, origBitmap, 0, dest_offset);
 orig_offset = dest_offset;
 mda_get_prod(ndim, dim, prod);
 mda_get_range(ndim, span, st, endp);
 mda_get_offset_values(ndim, dist, prod, span);
 for (i = 0; i < ndim; i++)
  indx[i] = 0;
 src_offset = 0;
 j = ndim - 1;
 do
 {

  if (dist[j])
  {
   inc = array_copy(destPtr, dist[j],
        origPtr, orig_offset, origBitmap,
        typlen, typbyval, typalign);
   destPtr += inc;
   origPtr += inc;
   if (destBitmap)
    array_bitmap_copy(destBitmap, dest_offset,
          origBitmap, orig_offset,
          dist[j]);
   dest_offset += dist[j];
   orig_offset += dist[j];
  }

  inc = array_copy(destPtr, 1,
       srcPtr, src_offset, srcBitmap,
       typlen, typbyval, typalign);
  if (destBitmap)
   array_bitmap_copy(destBitmap, dest_offset,
         srcBitmap, src_offset,
         1);
  destPtr += inc;
  srcPtr += inc;
  dest_offset++;
  src_offset++;

  origPtr = array_seek(origPtr, orig_offset, origBitmap, 1,
        typlen, typbyval, typalign);
  orig_offset++;
 } while ((j = mda_next_tuple(ndim, indx, span)) != -1);


 array_copy(destPtr, orignitems - orig_offset,
      origPtr, orig_offset, origBitmap,
      typlen, typbyval, typalign);
 if (destBitmap)
  array_bitmap_copy(destBitmap, dest_offset,
        origBitmap, orig_offset,
        orignitems - orig_offset);
}
