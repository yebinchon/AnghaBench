
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
typedef size_t uint32 ;
struct TYPE_4__ {size_t lastidx; scalar_t__ invalidval; size_t nitems; scalar_t__* itemsarr; int capacity; } ;
typedef TYPE_1__ ResourceArray ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 size_t DatumGetUInt32 (int ) ;
 scalar_t__ RESARRAY_IS_ARRAY (TYPE_1__*) ;
 int hash_any (void*,int) ;

__attribute__((used)) static bool
ResourceArrayRemove(ResourceArray *resarr, Datum value)
{
 uint32 i,
    idx,
    lastidx = resarr->lastidx;

 Assert(value != resarr->invalidval);


 if (RESARRAY_IS_ARRAY(resarr))
 {
  if (lastidx < resarr->nitems &&
   resarr->itemsarr[lastidx] == value)
  {
   resarr->itemsarr[lastidx] = resarr->itemsarr[resarr->nitems - 1];
   resarr->nitems--;

   resarr->lastidx = resarr->nitems - 1;
   return 1;
  }
  for (i = 0; i < resarr->nitems; i++)
  {
   if (resarr->itemsarr[i] == value)
   {
    resarr->itemsarr[i] = resarr->itemsarr[resarr->nitems - 1];
    resarr->nitems--;

    resarr->lastidx = resarr->nitems - 1;
    return 1;
   }
  }
 }
 else
 {
  uint32 mask = resarr->capacity - 1;

  if (lastidx < resarr->capacity &&
   resarr->itemsarr[lastidx] == value)
  {
   resarr->itemsarr[lastidx] = resarr->invalidval;
   resarr->nitems--;
   return 1;
  }
  idx = DatumGetUInt32(hash_any((void *) &value, sizeof(value))) & mask;
  for (i = 0; i < resarr->capacity; i++)
  {
   if (resarr->itemsarr[idx] == value)
   {
    resarr->itemsarr[idx] = resarr->invalidval;
    resarr->nitems--;
    return 1;
   }
   idx = (idx + 1) & mask;
  }
 }

 return 0;
}
