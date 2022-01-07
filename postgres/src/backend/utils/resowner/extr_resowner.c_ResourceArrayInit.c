
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ capacity; scalar_t__ nitems; scalar_t__ maxitems; int invalidval; int * itemsarr; } ;
typedef TYPE_1__ ResourceArray ;
typedef int Datum ;


 int Assert (int) ;

__attribute__((used)) static void
ResourceArrayInit(ResourceArray *resarr, Datum invalidval)
{

 Assert(resarr->itemsarr == ((void*)0));
 Assert(resarr->capacity == 0);
 Assert(resarr->nitems == 0);
 Assert(resarr->maxitems == 0);

 resarr->invalidval = invalidval;

}
