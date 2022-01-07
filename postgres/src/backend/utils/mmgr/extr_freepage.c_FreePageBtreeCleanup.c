
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {TYPE_3__* leaf_key; TYPE_1__* internal_key; } ;
struct TYPE_19__ {int nused; scalar_t__ magic; int parent; } ;
struct TYPE_23__ {TYPE_4__ u; TYPE_2__ hdr; } ;
struct TYPE_22__ {scalar_t__ btree_depth; scalar_t__ singleton_first_page; scalar_t__ singleton_npages; scalar_t__ btree_recycle_count; int btree_root; } ;
struct TYPE_20__ {scalar_t__ first_page; scalar_t__ npages; } ;
struct TYPE_18__ {int child; } ;
typedef scalar_t__ Size ;
typedef TYPE_5__ FreePageManager ;
typedef TYPE_6__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 TYPE_6__* FreePageBtreeGetRecycled (TYPE_5__*) ;
 int FreePageBtreeRecycle (TYPE_5__*,scalar_t__) ;
 scalar_t__ FreePageManagerPutInternal (TYPE_5__*,scalar_t__,int,int) ;
 int FreePagePopSpanLeader (TYPE_5__*,scalar_t__) ;
 int FreePagePushSpanLeader (TYPE_5__*,scalar_t__,scalar_t__) ;
 scalar_t__ fpm_pointer_to_page (char*,TYPE_6__*) ;
 char* fpm_segment_base (TYPE_5__*) ;
 TYPE_6__* relptr_access (char*,int ) ;
 int relptr_copy (int ,int ) ;
 int relptr_is_null (int ) ;
 int relptr_store (char*,int ,TYPE_6__*) ;

__attribute__((used)) static Size
FreePageBtreeCleanup(FreePageManager *fpm)
{
 char *base = fpm_segment_base(fpm);
 Size max_contiguous_pages = 0;


 while (!relptr_is_null(fpm->btree_root))
 {
  FreePageBtree *root = relptr_access(base, fpm->btree_root);


  if (root->hdr.nused == 1)
  {

   Assert(fpm->btree_depth > 0);
   --fpm->btree_depth;
   if (root->hdr.magic == FREE_PAGE_LEAF_MAGIC)
   {

    relptr_store(base, fpm->btree_root, (FreePageBtree *) ((void*)0));
    fpm->singleton_first_page = root->u.leaf_key[0].first_page;
    fpm->singleton_npages = root->u.leaf_key[0].npages;
   }
   else
   {
    FreePageBtree *newroot;


    Assert(root->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
    relptr_copy(fpm->btree_root, root->u.internal_key[0].child);
    newroot = relptr_access(base, fpm->btree_root);
    relptr_store(base, newroot->hdr.parent, (FreePageBtree *) ((void*)0));
   }
   FreePageBtreeRecycle(fpm, fpm_pointer_to_page(base, root));
  }
  else if (root->hdr.nused == 2 &&
     root->hdr.magic == FREE_PAGE_LEAF_MAGIC)
  {
   Size end_of_first;
   Size start_of_second;

   end_of_first = root->u.leaf_key[0].first_page +
    root->u.leaf_key[0].npages;
   start_of_second = root->u.leaf_key[1].first_page;

   if (end_of_first + 1 == start_of_second)
   {
    Size root_page = fpm_pointer_to_page(base, root);

    if (end_of_first == root_page)
    {
     FreePagePopSpanLeader(fpm, root->u.leaf_key[0].first_page);
     FreePagePopSpanLeader(fpm, root->u.leaf_key[1].first_page);
     fpm->singleton_first_page = root->u.leaf_key[0].first_page;
     fpm->singleton_npages = root->u.leaf_key[0].npages +
      root->u.leaf_key[1].npages + 1;
     fpm->btree_depth = 0;
     relptr_store(base, fpm->btree_root,
         (FreePageBtree *) ((void*)0));
     FreePagePushSpanLeader(fpm, fpm->singleton_first_page,
             fpm->singleton_npages);
     Assert(max_contiguous_pages == 0);
     max_contiguous_pages = fpm->singleton_npages;
    }
   }


   break;
  }
  else
  {

   break;
  }
 }
 while (fpm->btree_recycle_count > 0)
 {
  FreePageBtree *btp;
  Size first_page;
  Size contiguous_pages;

  btp = FreePageBtreeGetRecycled(fpm);
  first_page = fpm_pointer_to_page(base, btp);
  contiguous_pages = FreePageManagerPutInternal(fpm, first_page, 1, 1);
  if (contiguous_pages == 0)
  {
   FreePageBtreeRecycle(fpm, first_page);
   break;
  }
  else
  {
   if (contiguous_pages > max_contiguous_pages)
    max_contiguous_pages = contiguous_pages;
  }
 }

 return max_contiguous_pages;
}
