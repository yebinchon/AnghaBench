
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;
typedef int ArrayType ;


 int ARR_DIMS (int *) ;
 int ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int* ARR_NULLBITMAP (int *) ;
 int ArrayGetNItems (int ,int ) ;

bool
array_contains_nulls(ArrayType *array)
{
 int nelems;
 bits8 *bitmap;
 int bitmask;


 if (!ARR_HASNULL(array))
  return 0;

 nelems = ArrayGetNItems(ARR_NDIM(array), ARR_DIMS(array));

 bitmap = ARR_NULLBITMAP(array);


 while (nelems >= 8)
 {
  if (*bitmap != 0xFF)
   return 1;
  bitmap++;
  nelems -= 8;
 }


 bitmask = 1;
 while (nelems > 0)
 {
  if ((*bitmap & bitmask) == 0)
   return 1;
  bitmask <<= 1;
  nelems--;
 }

 return 0;
}
