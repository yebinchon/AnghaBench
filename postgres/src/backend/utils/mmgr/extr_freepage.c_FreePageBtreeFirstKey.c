
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* internal_key; TYPE_1__* leaf_key; } ;
struct TYPE_8__ {scalar_t__ nused; scalar_t__ magic; } ;
struct TYPE_11__ {TYPE_3__ u; TYPE_2__ hdr; } ;
struct TYPE_10__ {int first_page; } ;
struct TYPE_7__ {int first_page; } ;
typedef int Size ;
typedef TYPE_5__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;

__attribute__((used)) static Size
FreePageBtreeFirstKey(FreePageBtree *btp)
{
 Assert(btp->hdr.nused > 0);

 if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  return btp->u.leaf_key[0].first_page;
 else
 {
  Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
  return btp->u.internal_key[0].first_page;
 }
}
