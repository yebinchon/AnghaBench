
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_4__ {scalar_t__ nitems; size_t lastidx; size_t capacity; scalar_t__* itemsarr; scalar_t__ invalidval; } ;
typedef TYPE_1__ ResourceArray ;
typedef scalar_t__ Datum ;


 scalar_t__ RESARRAY_IS_ARRAY (TYPE_1__*) ;

__attribute__((used)) static bool
ResourceArrayGetAny(ResourceArray *resarr, Datum *value)
{
 if (resarr->nitems == 0)
  return 0;

 if (RESARRAY_IS_ARRAY(resarr))
 {

  resarr->lastidx = 0;
 }
 else
 {

  uint32 mask = resarr->capacity - 1;

  for (;;)
  {
   resarr->lastidx &= mask;
   if (resarr->itemsarr[resarr->lastidx] != resarr->invalidval)
    break;
   resarr->lastidx++;
  }
 }

 *value = resarr->itemsarr[resarr->lastidx];
 return 1;
}
