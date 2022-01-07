
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int contiguous_pages_dirty; int * freelist; scalar_t__ free_pages; scalar_t__ contiguous_pages; scalar_t__ singleton_npages; scalar_t__ singleton_first_page; scalar_t__ btree_recycle_count; scalar_t__ btree_depth; int btree_recycle; int btree_root; int self; } ;
typedef size_t Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_1__ FreePageManager ;
typedef TYPE_1__ FreePageBtree ;


 size_t FPM_NUM_FREELISTS ;
 int relptr_store (char*,int ,TYPE_1__*) ;

void
FreePageManagerInitialize(FreePageManager *fpm, char *base)
{
 Size f;

 relptr_store(base, fpm->self, fpm);
 relptr_store(base, fpm->btree_root, (FreePageBtree *) ((void*)0));
 relptr_store(base, fpm->btree_recycle, (FreePageSpanLeader *) ((void*)0));
 fpm->btree_depth = 0;
 fpm->btree_recycle_count = 0;
 fpm->singleton_first_page = 0;
 fpm->singleton_npages = 0;
 fpm->contiguous_pages = 0;
 fpm->contiguous_pages_dirty = 1;




 for (f = 0; f < FPM_NUM_FREELISTS; f++)
  relptr_store(base, fpm->freelist[f], (FreePageSpanLeader *) ((void*)0));
}
