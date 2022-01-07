
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* leaf_key; TYPE_1__* internal_key; } ;
struct TYPE_15__ {scalar_t__ magic; size_t nused; int parent; } ;
struct TYPE_20__ {TYPE_4__ u; TYPE_2__ hdr; } ;
struct TYPE_19__ {int split_pages; int found; size_t index; TYPE_7__* page; } ;
struct TYPE_18__ {int btree_root; } ;
struct TYPE_16__ {size_t first_page; } ;
struct TYPE_14__ {size_t first_page; int child; } ;
typedef size_t Size ;
typedef TYPE_5__ FreePageManager ;
typedef TYPE_6__ FreePageBtreeSearchResult ;
typedef TYPE_7__ FreePageBtree ;


 int Assert (int) ;
 size_t FPM_ITEMS_PER_INTERNAL_PAGE ;
 size_t FPM_ITEMS_PER_LEAF_PAGE ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 size_t FreePageBtreeSearchInternal (TYPE_7__*,size_t) ;
 size_t FreePageBtreeSearchLeaf (TYPE_7__*,size_t) ;
 char* fpm_segment_base (TYPE_5__*) ;
 TYPE_7__* relptr_access (char*,int ) ;

__attribute__((used)) static void
FreePageBtreeSearch(FreePageManager *fpm, Size first_page,
     FreePageBtreeSearchResult *result)
{
 char *base = fpm_segment_base(fpm);
 FreePageBtree *btp = relptr_access(base, fpm->btree_root);
 Size index;

 result->split_pages = 1;


 if (btp == ((void*)0))
 {
  result->page = ((void*)0);
  result->found = 0;
  return;
 }


 while (btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC)
 {
  FreePageBtree *child;
  bool found_exact;

  index = FreePageBtreeSearchInternal(btp, first_page);
  found_exact = index < btp->hdr.nused &&
   btp->u.internal_key[index].first_page == first_page;






  if (!found_exact && index > 0)
   --index;


  if (btp->hdr.nused >= FPM_ITEMS_PER_INTERNAL_PAGE)
  {
   Assert(btp->hdr.nused == FPM_ITEMS_PER_INTERNAL_PAGE);
   result->split_pages++;
  }
  else
   result->split_pages = 0;


  Assert(index < btp->hdr.nused);
  child = relptr_access(base, btp->u.internal_key[index].child);
  Assert(relptr_access(base, child->hdr.parent) == btp);
  btp = child;
 }


 if (btp->hdr.nused >= FPM_ITEMS_PER_LEAF_PAGE)
 {
  Assert(btp->hdr.nused == FPM_ITEMS_PER_INTERNAL_PAGE);
  result->split_pages++;
 }
 else
  result->split_pages = 0;


 index = FreePageBtreeSearchLeaf(btp, first_page);


 result->page = btp;
 result->index = index;
 result->found = index < btp->hdr.nused &&
  first_page == btp->u.leaf_key[index].first_page;
}
