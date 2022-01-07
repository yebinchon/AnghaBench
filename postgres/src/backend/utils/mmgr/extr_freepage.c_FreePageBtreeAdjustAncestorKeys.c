
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* internal_key; TYPE_1__* leaf_key; } ;
struct TYPE_10__ {scalar_t__ nused; scalar_t__ magic; int parent; } ;
struct TYPE_13__ {TYPE_4__ u; TYPE_2__ hdr; } ;
struct TYPE_11__ {size_t first_page; int child; } ;
struct TYPE_9__ {size_t first_page; } ;
typedef size_t Size ;
typedef int FreePageManager ;
typedef TYPE_5__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FPM_ITEMS_PER_INTERNAL_PAGE ;
 scalar_t__ FPM_ITEMS_PER_LEAF_PAGE ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 size_t FreePageBtreeSearchInternal (TYPE_5__*,size_t) ;
 char* fpm_segment_base (int *) ;
 TYPE_5__* relptr_access (char*,int ) ;

__attribute__((used)) static void
FreePageBtreeAdjustAncestorKeys(FreePageManager *fpm, FreePageBtree *btp)
{
 char *base = fpm_segment_base(fpm);
 Size first_page;
 FreePageBtree *parent;
 FreePageBtree *child;


 Assert(btp->hdr.nused > 0);
 if (btp->hdr.magic == FREE_PAGE_LEAF_MAGIC)
 {
  Assert(btp->hdr.nused <= FPM_ITEMS_PER_LEAF_PAGE);
  first_page = btp->u.leaf_key[0].first_page;
 }
 else
 {
  Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
  Assert(btp->hdr.nused <= FPM_ITEMS_PER_INTERNAL_PAGE);
  first_page = btp->u.internal_key[0].first_page;
 }
 child = btp;


 for (;;)
 {
  Size s;

  parent = relptr_access(base, child->hdr.parent);
  if (parent == ((void*)0))
   break;
  s = FreePageBtreeSearchInternal(parent, first_page);


  if (s >= parent->hdr.nused)
  {
   Assert(s == parent->hdr.nused);
   --s;
  }
  else
  {
   FreePageBtree *check;

   check = relptr_access(base, parent->u.internal_key[s].child);
   if (check != child)
   {
    Assert(s > 0);
    --s;
   }
  }
  parent->u.internal_key[s].first_page = first_page;





  if (s > 0)
   break;
  child = parent;
 }
}
