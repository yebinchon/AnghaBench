
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * freelist; } ;
struct TYPE_7__ {size_t npages; int prev; int next; int magic; } ;
typedef size_t Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_2__ FreePageManager ;


 int FPM_NUM_FREELISTS ;
 int FREE_PAGE_SPAN_LEADER_MAGIC ;
 size_t Min (size_t,int ) ;
 scalar_t__ fpm_page_to_pointer (char*,size_t) ;
 char* fpm_segment_base (TYPE_2__*) ;
 TYPE_1__* relptr_access (char*,int ) ;
 int relptr_store (char*,int ,TYPE_1__*) ;

__attribute__((used)) static void
FreePagePushSpanLeader(FreePageManager *fpm, Size first_page, Size npages)
{
 char *base = fpm_segment_base(fpm);
 Size f = Min(npages, FPM_NUM_FREELISTS) - 1;
 FreePageSpanLeader *head = relptr_access(base, fpm->freelist[f]);
 FreePageSpanLeader *span;

 span = (FreePageSpanLeader *) fpm_page_to_pointer(base, first_page);
 span->magic = FREE_PAGE_SPAN_LEADER_MAGIC;
 span->npages = npages;
 relptr_store(base, span->next, head);
 relptr_store(base, span->prev, (FreePageSpanLeader *) ((void*)0));
 if (head != ((void*)0))
  relptr_store(base, head->prev, span);
 relptr_store(base, fpm->freelist[f], span);
}
