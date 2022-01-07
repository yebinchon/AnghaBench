
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* internal_key; } ;
struct TYPE_8__ {int nused; scalar_t__ magic; } ;
struct TYPE_9__ {TYPE_2__ u; TYPE_3__ hdr; } ;
struct TYPE_6__ {int first_page; } ;
typedef int Size ;
typedef TYPE_4__ FreePageBtree ;


 int Assert (int) ;
 int FPM_ITEMS_PER_INTERNAL_PAGE ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;

__attribute__((used)) static Size
FreePageBtreeSearchInternal(FreePageBtree *btp, Size first_page)
{
 Size low = 0;
 Size high = btp->hdr.nused;

 Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
 Assert(high > 0 && high <= FPM_ITEMS_PER_INTERNAL_PAGE);

 while (low < high)
 {
  Size mid = (low + high) / 2;
  Size val = btp->u.internal_key[mid].first_page;

  if (first_page == val)
   return mid;
  else if (first_page < val)
   high = mid;
  else
   low = mid + 1;
 }

 return low;
}
