
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
typedef size_t uint32 ;
struct TYPE_4__ {scalar_t__ invalidval; scalar_t__ nitems; scalar_t__ maxitems; size_t capacity; scalar_t__* itemsarr; size_t lastidx; } ;
typedef TYPE_1__ ResourceArray ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 size_t DatumGetUInt32 (int ) ;
 scalar_t__ RESARRAY_IS_ARRAY (TYPE_1__*) ;
 int hash_any (void*,int) ;

__attribute__((used)) static void
ResourceArrayAdd(ResourceArray *resarr, Datum value)
{
 uint32 idx;

 Assert(value != resarr->invalidval);
 Assert(resarr->nitems < resarr->maxitems);

 if (RESARRAY_IS_ARRAY(resarr))
 {

  idx = resarr->nitems;
 }
 else
 {

  uint32 mask = resarr->capacity - 1;

  idx = DatumGetUInt32(hash_any((void *) &value, sizeof(value))) & mask;
  for (;;)
  {
   if (resarr->itemsarr[idx] == resarr->invalidval)
    break;
   idx = (idx + 1) & mask;
  }
 }
 resarr->lastidx = idx;
 resarr->itemsarr[idx] = value;
 resarr->nitems++;
}
