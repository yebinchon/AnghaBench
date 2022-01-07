
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ magic; int nused; } ;
struct TYPE_11__ {int * internal_key; int * leaf_key; } ;
struct TYPE_13__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef int Size ;
typedef int FreePageManager ;
typedef int FreePageBtreeLeafKey ;
typedef int FreePageBtreeInternalKey ;
typedef TYPE_3__ FreePageBtree ;


 int Assert (int) ;
 int FPM_ITEMS_PER_INTERNAL_PAGE ;
 int FPM_ITEMS_PER_LEAF_PAGE ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 TYPE_3__* FreePageBtreeFindLeftSibling (char*,TYPE_3__*) ;
 TYPE_3__* FreePageBtreeFindRightSibling (char*,TYPE_3__*) ;
 int FreePageBtreeRemovePage (int *,TYPE_3__*) ;
 int FreePageBtreeUpdateParentPointers (char*,TYPE_3__*) ;
 char* fpm_segment_base (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
FreePageBtreeConsolidate(FreePageManager *fpm, FreePageBtree *btp)
{
 char *base = fpm_segment_base(fpm);
 FreePageBtree *np;
 Size max;
 if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  max = FPM_ITEMS_PER_LEAF_PAGE;
 else
 {
  Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
  max = FPM_ITEMS_PER_INTERNAL_PAGE;
 }
 if (btp->hdr.nused >= max / 3)
  return;




 np = FreePageBtreeFindRightSibling(base, btp);
 if (np != ((void*)0) && btp->hdr.nused + np->hdr.nused <= max)
 {
  if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  {
   memcpy(&btp->u.leaf_key[btp->hdr.nused], &np->u.leaf_key[0],
       sizeof(FreePageBtreeLeafKey) * np->hdr.nused);
   btp->hdr.nused += np->hdr.nused;
  }
  else
  {
   memcpy(&btp->u.internal_key[btp->hdr.nused], &np->u.internal_key[0],
       sizeof(FreePageBtreeInternalKey) * np->hdr.nused);
   btp->hdr.nused += np->hdr.nused;
   FreePageBtreeUpdateParentPointers(base, btp);
  }
  FreePageBtreeRemovePage(fpm, np);
  return;
 }






 np = FreePageBtreeFindLeftSibling(base, btp);
 if (np != ((void*)0) && btp->hdr.nused + np->hdr.nused <= max)
 {
  if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  {
   memcpy(&np->u.leaf_key[np->hdr.nused], &btp->u.leaf_key[0],
       sizeof(FreePageBtreeLeafKey) * btp->hdr.nused);
   np->hdr.nused += btp->hdr.nused;
  }
  else
  {
   memcpy(&np->u.internal_key[np->hdr.nused], &btp->u.internal_key[0],
       sizeof(FreePageBtreeInternalKey) * btp->hdr.nused);
   np->hdr.nused += btp->hdr.nused;
   FreePageBtreeUpdateParentPointers(base, np);
  }
  FreePageBtreeRemovePage(fpm, btp);
  return;
 }
}
