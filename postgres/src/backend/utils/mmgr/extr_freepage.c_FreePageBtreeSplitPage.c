
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ magic; int nused; int parent; } ;
struct TYPE_8__ {int * internal_key; int * leaf_key; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef int FreePageManager ;
typedef int FreePageBtreeLeafKey ;
typedef int FreePageBtreeInternalKey ;
typedef TYPE_3__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 TYPE_3__* FreePageBtreeGetRecycled (int *) ;
 int FreePageBtreeUpdateParentPointers (int ,TYPE_3__*) ;
 int fpm_segment_base (int *) ;
 int memcpy (int **,int *,int) ;
 int relptr_copy (int ,int ) ;

__attribute__((used)) static FreePageBtree *
FreePageBtreeSplitPage(FreePageManager *fpm, FreePageBtree *btp)
{
 FreePageBtree *newsibling;

 newsibling = FreePageBtreeGetRecycled(fpm);
 newsibling->hdr.magic = btp->hdr.magic;
 newsibling->hdr.nused = btp->hdr.nused / 2;
 relptr_copy(newsibling->hdr.parent, btp->hdr.parent);
 btp->hdr.nused -= newsibling->hdr.nused;

 if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  memcpy(&newsibling->u.leaf_key,
      &btp->u.leaf_key[btp->hdr.nused],
      sizeof(FreePageBtreeLeafKey) * newsibling->hdr.nused);
 else
 {
  Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
  memcpy(&newsibling->u.internal_key,
      &btp->u.internal_key[btp->hdr.nused],
      sizeof(FreePageBtreeInternalKey) * newsibling->hdr.nused);
  FreePageBtreeUpdateParentPointers(fpm_segment_base(fpm), newsibling);
 }

 return newsibling;
}
