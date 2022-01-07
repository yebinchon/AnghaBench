
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ contiguous_pages; scalar_t__ free_pages; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ FreePageManager ;


 int Assert (int) ;
 scalar_t__ FreePageBtreeCleanup (TYPE_1__*) ;
 int FreePageManagerGetInternal (TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ FreePageManagerLargestContiguous (TYPE_1__*) ;
 int FreePageManagerUpdateLargest (TYPE_1__*) ;
 scalar_t__ sum_free_pages (TYPE_1__*) ;

bool
FreePageManagerGet(FreePageManager *fpm, Size npages, Size *first_page)
{
 bool result;
 Size contiguous_pages;

 result = FreePageManagerGetInternal(fpm, npages, first_page);
 contiguous_pages = FreePageBtreeCleanup(fpm);
 if (fpm->contiguous_pages < contiguous_pages)
  fpm->contiguous_pages = contiguous_pages;





 FreePageManagerUpdateLargest(fpm);
 return result;
}
