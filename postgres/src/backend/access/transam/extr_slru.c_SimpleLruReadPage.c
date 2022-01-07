
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_13__ {TYPE_2__* shared; } ;
struct TYPE_12__ {int* page_number; scalar_t__* page_status; int* page_dirty; TYPE_1__* buffer_locks; int * ControlLock; } ;
struct TYPE_11__ {int lock; } ;
typedef TYPE_2__* SlruShared ;
typedef TYPE_3__* SlruCtl ;


 int Assert (int) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_READ_IN_PROGRESS ;
 scalar_t__ SLRU_PAGE_VALID ;
 scalar_t__ SLRU_PAGE_WRITE_IN_PROGRESS ;
 int SimpleLruWaitIO (TYPE_3__*,int) ;
 int SimpleLruZeroLSNs (TYPE_3__*,int) ;
 int SlruPhysicalReadPage (TYPE_3__*,int,int) ;
 int SlruRecentlyUsed (TYPE_2__*,int) ;
 int SlruReportIOError (TYPE_3__*,int,int ) ;
 int SlruSelectLRUPage (TYPE_3__*,int) ;

int
SimpleLruReadPage(SlruCtl ctl, int pageno, bool write_ok,
      TransactionId xid)
{
 SlruShared shared = ctl->shared;


 for (;;)
 {
  int slotno;
  bool ok;


  slotno = SlruSelectLRUPage(ctl, pageno);


  if (shared->page_number[slotno] == pageno &&
   shared->page_status[slotno] != SLRU_PAGE_EMPTY)
  {




   if (shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS ||
    (shared->page_status[slotno] == SLRU_PAGE_WRITE_IN_PROGRESS &&
     !write_ok))
   {
    SimpleLruWaitIO(ctl, slotno);

    continue;
   }

   SlruRecentlyUsed(shared, slotno);
   return slotno;
  }


  Assert(shared->page_status[slotno] == SLRU_PAGE_EMPTY ||
      (shared->page_status[slotno] == SLRU_PAGE_VALID &&
    !shared->page_dirty[slotno]));


  shared->page_number[slotno] = pageno;
  shared->page_status[slotno] = SLRU_PAGE_READ_IN_PROGRESS;
  shared->page_dirty[slotno] = 0;


  LWLockAcquire(&shared->buffer_locks[slotno].lock, LW_EXCLUSIVE);


  LWLockRelease(shared->ControlLock);


  ok = SlruPhysicalReadPage(ctl, pageno, slotno);


  SimpleLruZeroLSNs(ctl, slotno);


  LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);

  Assert(shared->page_number[slotno] == pageno &&
      shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS &&
      !shared->page_dirty[slotno]);

  shared->page_status[slotno] = ok ? SLRU_PAGE_VALID : SLRU_PAGE_EMPTY;

  LWLockRelease(&shared->buffer_locks[slotno].lock);


  if (!ok)
   SlruReportIOError(ctl, pageno, xid);

  SlruRecentlyUsed(shared, slotno);
  return slotno;
 }
}
