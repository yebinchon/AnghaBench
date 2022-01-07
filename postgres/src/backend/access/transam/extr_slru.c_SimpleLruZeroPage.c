
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* shared; } ;
struct TYPE_7__ {scalar_t__* page_status; int* page_dirty; int* page_number; int latest_page_number; int * page_buffer; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int Assert (int) ;
 int BLCKSZ ;
 int MemSet (int ,int ,int ) ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_VALID ;
 int SimpleLruZeroLSNs (TYPE_2__*,int) ;
 int SlruRecentlyUsed (TYPE_1__*,int) ;
 int SlruSelectLRUPage (TYPE_2__*,int) ;

int
SimpleLruZeroPage(SlruCtl ctl, int pageno)
{
 SlruShared shared = ctl->shared;
 int slotno;


 slotno = SlruSelectLRUPage(ctl, pageno);
 Assert(shared->page_status[slotno] == SLRU_PAGE_EMPTY ||
     (shared->page_status[slotno] == SLRU_PAGE_VALID &&
   !shared->page_dirty[slotno]) ||
     shared->page_number[slotno] == pageno);


 shared->page_number[slotno] = pageno;
 shared->page_status[slotno] = SLRU_PAGE_VALID;
 shared->page_dirty[slotno] = 1;
 SlruRecentlyUsed(shared, slotno);


 MemSet(shared->page_buffer[slotno], 0, BLCKSZ);


 SimpleLruZeroLSNs(ctl, slotno);


 shared->latest_page_number = pageno;

 return slotno;
}
