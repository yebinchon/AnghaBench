
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t relptr_off; } ;
struct TYPE_10__ {TYPE_3__* freelist; } ;
struct TYPE_9__ {TYPE_3__ next; int npages; TYPE_3__ prev; } ;
typedef size_t Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef TYPE_2__ FreePageManager ;


 int Assert (int) ;
 int FPM_NUM_FREELISTS ;
 size_t FPM_PAGE_SIZE ;
 size_t Min (int ,int ) ;
 scalar_t__ fpm_page_to_pointer (char*,size_t) ;
 char* fpm_segment_base (TYPE_2__*) ;
 TYPE_1__* relptr_access (char*,TYPE_3__) ;
 int relptr_copy (TYPE_3__,TYPE_3__) ;

__attribute__((used)) static void
FreePagePopSpanLeader(FreePageManager *fpm, Size pageno)
{
 char *base = fpm_segment_base(fpm);
 FreePageSpanLeader *span;
 FreePageSpanLeader *next;
 FreePageSpanLeader *prev;

 span = (FreePageSpanLeader *) fpm_page_to_pointer(base, pageno);

 next = relptr_access(base, span->next);
 prev = relptr_access(base, span->prev);
 if (next != ((void*)0))
  relptr_copy(next->prev, span->prev);
 if (prev != ((void*)0))
  relptr_copy(prev->next, span->next);
 else
 {
  Size f = Min(span->npages, FPM_NUM_FREELISTS) - 1;

  Assert(fpm->freelist[f].relptr_off == pageno * FPM_PAGE_SIZE);
  relptr_copy(fpm->freelist[f], span->next);
 }
}
