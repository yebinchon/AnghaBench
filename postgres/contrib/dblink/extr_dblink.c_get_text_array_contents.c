
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int bits8 ;
typedef int ArrayType ;


 char* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 int ARR_NDIM (int *) ;
 int* ARR_NULLBITMAP (int *) ;
 int ArrayGetNItems (int,int*) ;
 int Assert (int) ;
 int PointerGetDatum (char*) ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (int ) ;
 char* att_addlength_pointer (char*,int ,char*) ;
 scalar_t__ att_align_nominal (char*,char) ;
 int get_typlenbyvalalign (scalar_t__,int *,int*,char*) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static char **
get_text_array_contents(ArrayType *array, int *numitems)
{
 int ndim = ARR_NDIM(array);
 int *dims = ARR_DIMS(array);
 int nitems;
 int16 typlen;
 bool typbyval;
 char typalign;
 char **values;
 char *ptr;
 bits8 *bitmap;
 int bitmask;
 int i;

 Assert(ARR_ELEMTYPE(array) == TEXTOID);

 *numitems = nitems = ArrayGetNItems(ndim, dims);

 get_typlenbyvalalign(ARR_ELEMTYPE(array),
       &typlen, &typbyval, &typalign);

 values = (char **) palloc(nitems * sizeof(char *));

 ptr = ARR_DATA_PTR(array);
 bitmap = ARR_NULLBITMAP(array);
 bitmask = 1;

 for (i = 0; i < nitems; i++)
 {
  if (bitmap && (*bitmap & bitmask) == 0)
  {
   values[i] = ((void*)0);
  }
  else
  {
   values[i] = TextDatumGetCString(PointerGetDatum(ptr));
   ptr = att_addlength_pointer(ptr, typlen, ptr);
   ptr = (char *) att_align_nominal(ptr, typalign);
  }


  if (bitmap)
  {
   bitmask <<= 1;
   if (bitmask == 0x100)
   {
    bitmap++;
    bitmask = 1;
   }
  }
 }

 return values;
}
