
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int btree_recycle_count; int btree_recycle; } ;
struct TYPE_7__ {int npages; int prev; int next; int magic; } ;
typedef int Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_2__ FreePageManager ;


 int FREE_PAGE_SPAN_LEADER_MAGIC ;
 scalar_t__ fpm_page_to_pointer (char*,int ) ;
 char* fpm_segment_base (TYPE_2__*) ;
 TYPE_1__* relptr_access (char*,int ) ;
 int relptr_store (char*,int ,TYPE_1__*) ;

__attribute__((used)) static void
FreePageBtreeRecycle(FreePageManager *fpm, Size pageno)
{
 char *base = fpm_segment_base(fpm);
 FreePageSpanLeader *head = relptr_access(base, fpm->btree_recycle);
 FreePageSpanLeader *span;

 span = (FreePageSpanLeader *) fpm_page_to_pointer(base, pageno);
 span->magic = FREE_PAGE_SPAN_LEADER_MAGIC;
 span->npages = 1;
 relptr_store(base, span->next, head);
 relptr_store(base, span->prev, (FreePageSpanLeader *) ((void*)0));
 if (head != ((void*)0))
  relptr_store(base, head->prev, span);
 relptr_store(base, fpm->btree_recycle, span);
 fpm->btree_recycle_count++;
}
