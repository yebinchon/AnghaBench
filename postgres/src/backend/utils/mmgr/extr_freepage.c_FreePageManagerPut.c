
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
 scalar_t__ FreePageManagerLargestContiguous (TYPE_1__*) ;
 scalar_t__ FreePageManagerPutInternal (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int FreePageManagerUpdateLargest (TYPE_1__*) ;
 scalar_t__ sum_free_pages (TYPE_1__*) ;

void
FreePageManagerPut(FreePageManager *fpm, Size first_page, Size npages)
{
 Size contiguous_pages;

 Assert(npages > 0);


 contiguous_pages =
  FreePageManagerPutInternal(fpm, first_page, npages, 0);





 if (contiguous_pages > npages)
 {
  Size cleanup_contiguous_pages;

  cleanup_contiguous_pages = FreePageBtreeCleanup(fpm);
  if (cleanup_contiguous_pages > contiguous_pages)
   contiguous_pages = cleanup_contiguous_pages;
 }


 if (fpm->contiguous_pages < contiguous_pages)
  fpm->contiguous_pages = contiguous_pages;






 FreePageManagerUpdateLargest(fpm);






}
