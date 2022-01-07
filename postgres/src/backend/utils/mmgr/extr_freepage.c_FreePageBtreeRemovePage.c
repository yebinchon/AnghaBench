
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int nused; scalar_t__ magic; int parent; } ;
struct TYPE_19__ {int * internal_key; int * leaf_key; } ;
struct TYPE_22__ {TYPE_2__ hdr; TYPE_1__ u; } ;
struct TYPE_21__ {scalar_t__ singleton_first_page; scalar_t__ singleton_npages; scalar_t__ btree_depth; int btree_root; } ;
typedef int Size ;
typedef TYPE_3__ FreePageManager ;
typedef int FreePageBtreeLeafKey ;
typedef int FreePageBtreeInternalKey ;
typedef TYPE_4__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_LEAF_MAGIC ;
 int FreePageBtreeAdjustAncestorKeys (TYPE_3__*,TYPE_4__*) ;
 int FreePageBtreeConsolidate (TYPE_3__*,TYPE_4__*) ;
 int FreePageBtreeFirstKey (TYPE_4__*) ;
 int FreePageBtreeRecycle (TYPE_3__*,int ) ;
 int FreePageBtreeSearchInternal (TYPE_4__*,int) ;
 int FreePageBtreeSearchLeaf (TYPE_4__*,int) ;
 int fpm_pointer_to_page (char*,TYPE_4__*) ;
 char* fpm_segment_base (TYPE_3__*) ;
 int memmove (int *,int *,int) ;
 TYPE_4__* relptr_access (char*,int ) ;
 int relptr_store (char*,int ,TYPE_4__*) ;

__attribute__((used)) static void
FreePageBtreeRemovePage(FreePageManager *fpm, FreePageBtree *btp)
{
 char *base = fpm_segment_base(fpm);
 FreePageBtree *parent;
 Size index;
 Size first_page;

 for (;;)
 {

  parent = relptr_access(base, btp->hdr.parent);
  if (parent == ((void*)0))
  {

   relptr_store(base, fpm->btree_root, (FreePageBtree *) ((void*)0));
   fpm->btree_depth = 0;
   Assert(fpm->singleton_first_page == 0);
   Assert(fpm->singleton_npages == 0);
   return;
  }




  if (parent->hdr.nused > 1)
   break;
  FreePageBtreeRecycle(fpm, fpm_pointer_to_page(base, btp));
  btp = parent;
 }


 first_page = FreePageBtreeFirstKey(btp);
 if (parent->hdr.magic == FREE_PAGE_LEAF_MAGIC)
 {
  index = FreePageBtreeSearchLeaf(parent, first_page);
  Assert(index < parent->hdr.nused);
  if (index < parent->hdr.nused - 1)
   memmove(&parent->u.leaf_key[index],
     &parent->u.leaf_key[index + 1],
     sizeof(FreePageBtreeLeafKey)
     * (parent->hdr.nused - index - 1));
 }
 else
 {
  index = FreePageBtreeSearchInternal(parent, first_page);
  Assert(index < parent->hdr.nused);
  if (index < parent->hdr.nused - 1)
   memmove(&parent->u.internal_key[index],
     &parent->u.internal_key[index + 1],
     sizeof(FreePageBtreeInternalKey)
     * (parent->hdr.nused - index - 1));
 }
 parent->hdr.nused--;
 Assert(parent->hdr.nused > 0);


 FreePageBtreeRecycle(fpm, fpm_pointer_to_page(base, btp));


 if (index == 0)
  FreePageBtreeAdjustAncestorKeys(fpm, parent);


 FreePageBtreeConsolidate(fpm, parent);
}
