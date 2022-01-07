
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {scalar_t__* itemsarr; int capacity; scalar_t__ invalidval; scalar_t__ maxitems; scalar_t__ nitems; } ;
typedef TYPE_1__ ResourceArray ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int RESARRAY_INIT_SIZE ;
 scalar_t__ RESARRAY_MAX_ITEMS (int) ;
 int ResourceArrayAdd (TYPE_1__*,scalar_t__) ;
 int TopMemoryContext ;
 int pfree (scalar_t__*) ;

__attribute__((used)) static void
ResourceArrayEnlarge(ResourceArray *resarr)
{
 uint32 i,
    oldcap,
    newcap;
 Datum *olditemsarr;
 Datum *newitemsarr;

 if (resarr->nitems < resarr->maxitems)
  return;

 olditemsarr = resarr->itemsarr;
 oldcap = resarr->capacity;


 newcap = (oldcap > 0) ? oldcap * 2 : RESARRAY_INIT_SIZE;
 newitemsarr = (Datum *) MemoryContextAlloc(TopMemoryContext,
              newcap * sizeof(Datum));
 for (i = 0; i < newcap; i++)
  newitemsarr[i] = resarr->invalidval;


 resarr->itemsarr = newitemsarr;
 resarr->capacity = newcap;
 resarr->maxitems = RESARRAY_MAX_ITEMS(newcap);
 resarr->nitems = 0;

 if (olditemsarr != ((void*)0))
 {







  for (i = 0; i < oldcap; i++)
  {
   if (olditemsarr[i] != resarr->invalidval)
    ResourceArrayAdd(resarr, olditemsarr[i]);
  }


  pfree(olditemsarr);
 }

 Assert(resarr->nitems < resarr->maxitems);
}
