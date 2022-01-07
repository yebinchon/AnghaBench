
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int contiguous_pages_dirty; int contiguous_pages; } ;
typedef TYPE_1__ FreePageManager ;


 int FreePageManagerLargestContiguous (TYPE_1__*) ;

__attribute__((used)) static void
FreePageManagerUpdateLargest(FreePageManager *fpm)
{
 if (!fpm->contiguous_pages_dirty)
  return;

 fpm->contiguous_pages = FreePageManagerLargestContiguous(fpm);
 fpm->contiguous_pages_dirty = 0;
}
