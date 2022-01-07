
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd_prune_xid; } ;
typedef TYPE_1__* PageHeader ;
typedef int Page ;


 int MASK_MARKER ;
 int PageClearAllVisible (int ) ;
 int PageClearFull (int ) ;
 int PageClearHasFreeLinePointers (int ) ;

void
mask_page_hint_bits(Page page)
{
 PageHeader phdr = (PageHeader) page;


 phdr->pd_prune_xid = MASK_MARKER;


 PageClearFull(page);
 PageClearHasFreeLinePointers(page);






 PageClearAllVisible(page);
}
