
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


struct TYPE_37__ {int nused; int parent; int magic; } ;
struct TYPE_36__ {TYPE_1__* internal_key; TYPE_6__* leaf_key; } ;
struct TYPE_41__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_40__ {scalar_t__ first_page; scalar_t__ npages; } ;
struct TYPE_39__ {int index; scalar_t__ split_pages; TYPE_7__* page; int found; } ;
struct TYPE_38__ {int btree_depth; scalar_t__ singleton_npages; scalar_t__ singleton_first_page; scalar_t__ btree_recycle_count; int btree_root; int btree_recycle; } ;
struct TYPE_35__ {scalar_t__ first_page; int child; } ;
typedef scalar_t__ Size ;
typedef TYPE_4__ FreePageManager ;
typedef TYPE_5__ FreePageBtreeSearchResult ;
typedef TYPE_6__ FreePageBtreeLeafKey ;
typedef TYPE_7__ FreePageBtree ;


 int Assert (int) ;
 int FATAL ;
 scalar_t__ FPM_ITEMS_PER_INTERNAL_PAGE ;
 scalar_t__ FPM_ITEMS_PER_LEAF_PAGE ;
 int FREE_PAGE_INTERNAL_MAGIC ;
 int FREE_PAGE_LEAF_MAGIC ;
 int FreePageBtreeAdjustAncestorKeys (TYPE_4__*,TYPE_7__*) ;
 TYPE_7__* FreePageBtreeFindRightSibling (char*,TYPE_7__*) ;
 void* FreePageBtreeFirstKey (TYPE_7__*) ;
 TYPE_7__* FreePageBtreeGetRecycled (TYPE_4__*) ;
 int FreePageBtreeInsertInternal (char*,TYPE_7__*,scalar_t__,scalar_t__,TYPE_7__*) ;
 int FreePageBtreeInsertLeaf (TYPE_7__*,scalar_t__,scalar_t__,scalar_t__) ;
 int FreePageBtreeRecycle (TYPE_4__*,scalar_t__) ;
 int FreePageBtreeRemove (TYPE_4__*,TYPE_7__*,scalar_t__) ;
 int FreePageBtreeSearch (TYPE_4__*,scalar_t__,TYPE_5__*) ;
 scalar_t__ FreePageBtreeSearchInternal (TYPE_7__*,scalar_t__) ;
 scalar_t__ FreePageBtreeSearchLeaf (TYPE_7__*,scalar_t__) ;
 TYPE_7__* FreePageBtreeSplitPage (TYPE_4__*,TYPE_7__*) ;
 scalar_t__ FreePageManagerGetInternal (TYPE_4__*,int,scalar_t__*) ;
 int FreePagePopSpanLeader (TYPE_4__*,scalar_t__) ;
 int FreePagePushSpanLeader (TYPE_4__*,scalar_t__,scalar_t__) ;
 int elog (int ,char*) ;
 scalar_t__ fpm_page_to_pointer (char*,scalar_t__) ;
 char* fpm_segment_base (TYPE_4__*) ;
 TYPE_7__* relptr_access (char*,int ) ;
 int relptr_is_null (int ) ;
 int relptr_store (char*,int ,TYPE_7__*) ;

__attribute__((used)) static Size
FreePageManagerPutInternal(FreePageManager *fpm, Size first_page, Size npages,
         bool soft)
{
 char *base = fpm_segment_base(fpm);
 FreePageBtreeSearchResult result;
 FreePageBtreeLeafKey *prevkey = ((void*)0);
 FreePageBtreeLeafKey *nextkey = ((void*)0);
 FreePageBtree *np;
 Size nindex;

 Assert(npages > 0);


 if (fpm->btree_depth == 0)
 {
  if (fpm->singleton_npages == 0)
  {

   fpm->singleton_first_page = first_page;
   fpm->singleton_npages = npages;
   FreePagePushSpanLeader(fpm, first_page, npages);
   return fpm->singleton_npages;
  }
  else if (fpm->singleton_first_page + fpm->singleton_npages ==
     first_page)
  {

   fpm->singleton_npages += npages;
   FreePagePopSpanLeader(fpm, fpm->singleton_first_page);
   FreePagePushSpanLeader(fpm, fpm->singleton_first_page,
           fpm->singleton_npages);
   return fpm->singleton_npages;
  }
  else if (first_page + npages == fpm->singleton_first_page)
  {

   FreePagePopSpanLeader(fpm, fpm->singleton_first_page);
   fpm->singleton_first_page = first_page;
   fpm->singleton_npages += npages;
   FreePagePushSpanLeader(fpm, fpm->singleton_first_page,
           fpm->singleton_npages);
   return fpm->singleton_npages;
  }
  else
  {

   Size root_page;
   FreePageBtree *root;

   if (!relptr_is_null(fpm->btree_recycle))
    root = FreePageBtreeGetRecycled(fpm);
   else if (soft)
    return 0;
   else if (FreePageManagerGetInternal(fpm, 1, &root_page))
    root = (FreePageBtree *) fpm_page_to_pointer(base, root_page);
   else
   {

    elog(FATAL, "free page manager btree is corrupt");
   }


   root->hdr.magic = FREE_PAGE_LEAF_MAGIC;
   root->hdr.nused = 1;
   relptr_store(base, root->hdr.parent, (FreePageBtree *) ((void*)0));
   root->u.leaf_key[0].first_page = fpm->singleton_first_page;
   root->u.leaf_key[0].npages = fpm->singleton_npages;
   relptr_store(base, fpm->btree_root, root);
   fpm->singleton_first_page = 0;
   fpm->singleton_npages = 0;
   fpm->btree_depth = 1;







   if (root->u.leaf_key[0].npages == 0)
   {
    root->u.leaf_key[0].first_page = first_page;
    root->u.leaf_key[0].npages = npages;
    FreePagePushSpanLeader(fpm, first_page, npages);
    return npages;
   }


  }
 }


 FreePageBtreeSearch(fpm, first_page, &result);
 Assert(!result.found);
 if (result.index > 0)
  prevkey = &result.page->u.leaf_key[result.index - 1];
 if (result.index < result.page->hdr.nused)
 {
  np = result.page;
  nindex = result.index;
  nextkey = &result.page->u.leaf_key[result.index];
 }
 else
 {
  np = FreePageBtreeFindRightSibling(base, result.page);
  nindex = 0;
  if (np != ((void*)0))
   nextkey = &np->u.leaf_key[0];
 }


 if (prevkey != ((void*)0) && prevkey->first_page + prevkey->npages >= first_page)
 {
  bool remove_next = 0;
  Size result;

  Assert(prevkey->first_page + prevkey->npages == first_page);
  prevkey->npages = (first_page - prevkey->first_page) + npages;


  if (nextkey != ((void*)0) &&
   prevkey->first_page + prevkey->npages >= nextkey->first_page)
  {
   Assert(prevkey->first_page + prevkey->npages ==
       nextkey->first_page);
   prevkey->npages = (nextkey->first_page - prevkey->first_page)
    + nextkey->npages;
   FreePagePopSpanLeader(fpm, nextkey->first_page);
   remove_next = 1;
  }


  FreePagePopSpanLeader(fpm, prevkey->first_page);
  FreePagePushSpanLeader(fpm, prevkey->first_page, prevkey->npages);
  result = prevkey->npages;
  if (remove_next)
   FreePageBtreeRemove(fpm, np, nindex);

  return result;
 }


 if (nextkey != ((void*)0) && first_page + npages >= nextkey->first_page)
 {
  Size newpages;


  Assert(first_page + npages == nextkey->first_page);
  newpages = (nextkey->first_page - first_page) + nextkey->npages;


  FreePagePopSpanLeader(fpm, nextkey->first_page);
  FreePagePushSpanLeader(fpm, first_page, newpages);


  nextkey->first_page = first_page;
  nextkey->npages = newpages;


  if (nindex == 0)
   FreePageBtreeAdjustAncestorKeys(fpm, np);

  return nextkey->npages;
 }


 if (result.split_pages > 0)
 {
  if (soft)
   return 0;


  if (result.split_pages > fpm->btree_recycle_count)
  {
   Size pages_needed;
   Size recycle_page;
   Size i;
   pages_needed = result.split_pages - fpm->btree_recycle_count;
   for (i = 0; i < pages_needed; ++i)
   {
    if (!FreePageManagerGetInternal(fpm, 1, &recycle_page))
     elog(FATAL, "free page manager btree is corrupt");
    FreePageBtreeRecycle(fpm, recycle_page);
   }
   FreePageBtreeSearch(fpm, first_page, &result);
   Assert(result.split_pages <= fpm->btree_recycle_count);
  }


  if (result.split_pages > 0)
  {
   FreePageBtree *split_target = result.page;
   FreePageBtree *child = ((void*)0);
   Size key = first_page;

   for (;;)
   {
    FreePageBtree *newsibling;
    FreePageBtree *parent;


    parent = relptr_access(base, split_target->hdr.parent);


    newsibling = FreePageBtreeSplitPage(fpm, split_target);
    if (child == ((void*)0))
    {
     Size index;
     FreePageBtree *insert_into;

     insert_into = key < newsibling->u.leaf_key[0].first_page ?
      split_target : newsibling;
     index = FreePageBtreeSearchLeaf(insert_into, key);
     FreePageBtreeInsertLeaf(insert_into, index, key, npages);
     if (index == 0 && insert_into == split_target)
      FreePageBtreeAdjustAncestorKeys(fpm, split_target);
    }
    else
    {
     Size index;
     FreePageBtree *insert_into;

     insert_into =
      key < newsibling->u.internal_key[0].first_page ?
      split_target : newsibling;
     index = FreePageBtreeSearchInternal(insert_into, key);
     FreePageBtreeInsertInternal(base, insert_into, index,
            key, child);
     relptr_store(base, child->hdr.parent, insert_into);
     if (index == 0 && insert_into == split_target)
      FreePageBtreeAdjustAncestorKeys(fpm, split_target);
    }


    if (parent == ((void*)0))
    {
     FreePageBtree *newroot;

     newroot = FreePageBtreeGetRecycled(fpm);
     newroot->hdr.magic = FREE_PAGE_INTERNAL_MAGIC;
     newroot->hdr.nused = 2;
     relptr_store(base, newroot->hdr.parent,
         (FreePageBtree *) ((void*)0));
     newroot->u.internal_key[0].first_page =
      FreePageBtreeFirstKey(split_target);
     relptr_store(base, newroot->u.internal_key[0].child,
         split_target);
     relptr_store(base, split_target->hdr.parent, newroot);
     newroot->u.internal_key[1].first_page =
      FreePageBtreeFirstKey(newsibling);
     relptr_store(base, newroot->u.internal_key[1].child,
         newsibling);
     relptr_store(base, newsibling->hdr.parent, newroot);
     relptr_store(base, fpm->btree_root, newroot);
     fpm->btree_depth++;

     break;
    }


    key = newsibling->u.internal_key[0].first_page;
    if (parent->hdr.nused < FPM_ITEMS_PER_INTERNAL_PAGE)
    {
     Size index;

     index = FreePageBtreeSearchInternal(parent, key);
     FreePageBtreeInsertInternal(base, parent, index,
            key, newsibling);
     relptr_store(base, newsibling->hdr.parent, parent);
     if (index == 0)
      FreePageBtreeAdjustAncestorKeys(fpm, parent);
     break;
    }


    child = newsibling;
    split_target = parent;
   }





   FreePagePushSpanLeader(fpm, first_page, npages);

   return npages;
  }
 }


 Assert(result.page->hdr.nused < FPM_ITEMS_PER_LEAF_PAGE);
 FreePageBtreeInsertLeaf(result.page, result.index, first_page, npages);


 if (result.index == 0)
  FreePageBtreeAdjustAncestorKeys(fpm, result.page);


 FreePagePushSpanLeader(fpm, first_page, npages);

 return npages;
}
