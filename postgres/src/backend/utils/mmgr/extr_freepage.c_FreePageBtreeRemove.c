
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ magic; size_t nused; } ;
struct TYPE_8__ {int * leaf_key; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef size_t Size ;
typedef int FreePageManager ;
typedef int FreePageBtreeLeafKey ;
typedef TYPE_3__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 int FreePageBtreeAdjustAncestorKeys (int *,TYPE_3__*) ;
 int FreePageBtreeConsolidate (int *,TYPE_3__*) ;
 int FreePageBtreeRemovePage (int *,TYPE_3__*) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void
FreePageBtreeRemove(FreePageManager *fpm, FreePageBtree *btp, Size index)
{
 Assert(btp->hdr.magic == FREE_PAGE_LEAF_MAGIC);
 Assert(index < btp->hdr.nused);


 if (btp->hdr.nused == 1)
 {
  FreePageBtreeRemovePage(fpm, btp);
  return;
 }


 --btp->hdr.nused;
 if (index < btp->hdr.nused)
  memmove(&btp->u.leaf_key[index], &btp->u.leaf_key[index + 1],
    sizeof(FreePageBtreeLeafKey) * (btp->hdr.nused - index));


 if (index == 0)
  FreePageBtreeAdjustAncestorKeys(fpm, btp);


 FreePageBtreeConsolidate(fpm, btp);
}
