
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int btree_recycle_count; int btree_recycle; } ;
struct TYPE_8__ {int prev; int next; } ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_2__ FreePageManager ;
typedef int FreePageBtree ;


 int Assert (int ) ;
 int fpm_pointer_is_page_aligned (char*,TYPE_1__*) ;
 char* fpm_segment_base (TYPE_2__*) ;
 TYPE_1__* relptr_access (char*,int ) ;
 int relptr_copy (int ,int ) ;
 int relptr_store (char*,int ,TYPE_1__*) ;

__attribute__((used)) static FreePageBtree *
FreePageBtreeGetRecycled(FreePageManager *fpm)
{
 char *base = fpm_segment_base(fpm);
 FreePageSpanLeader *victim = relptr_access(base, fpm->btree_recycle);
 FreePageSpanLeader *newhead;

 Assert(victim != ((void*)0));
 newhead = relptr_access(base, victim->next);
 if (newhead != ((void*)0))
  relptr_copy(newhead->prev, victim->prev);
 relptr_store(base, fpm->btree_recycle, newhead);
 Assert(fpm_pointer_is_page_aligned(base, victim));
 fpm->btree_recycle_count--;
 return (FreePageBtree *) victim;
}
