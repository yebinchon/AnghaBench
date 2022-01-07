
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* shared; } ;
struct TYPE_13__ {int num_files; int * fd; } ;
struct TYPE_12__ {int* page_number; scalar_t__* page_status; int* page_dirty; TYPE_1__* buffer_locks; int * ControlLock; } ;
struct TYPE_11__ {int lock; } ;
typedef TYPE_2__* SlruShared ;
typedef TYPE_3__* SlruFlush ;
typedef TYPE_4__* SlruCtl ;


 int Assert (int) ;
 int CloseTransientFile (int ) ;
 int InvalidTransactionId ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ SLRU_PAGE_VALID ;
 scalar_t__ SLRU_PAGE_WRITE_IN_PROGRESS ;
 int SimpleLruWaitIO (TYPE_4__*,int) ;
 int SlruPhysicalWritePage (TYPE_4__*,int,int,TYPE_3__*) ;
 int SlruReportIOError (TYPE_4__*,int,int ) ;

__attribute__((used)) static void
SlruInternalWritePage(SlruCtl ctl, int slotno, SlruFlush fdata)
{
 SlruShared shared = ctl->shared;
 int pageno = shared->page_number[slotno];
 bool ok;


 while (shared->page_status[slotno] == SLRU_PAGE_WRITE_IN_PROGRESS &&
     shared->page_number[slotno] == pageno)
 {
  SimpleLruWaitIO(ctl, slotno);
 }





 if (!shared->page_dirty[slotno] ||
  shared->page_status[slotno] != SLRU_PAGE_VALID ||
  shared->page_number[slotno] != pageno)
  return;





 shared->page_status[slotno] = SLRU_PAGE_WRITE_IN_PROGRESS;
 shared->page_dirty[slotno] = 0;


 LWLockAcquire(&shared->buffer_locks[slotno].lock, LW_EXCLUSIVE);


 LWLockRelease(shared->ControlLock);


 ok = SlruPhysicalWritePage(ctl, pageno, slotno, fdata);


 if (!ok && fdata)
 {
  int i;

  for (i = 0; i < fdata->num_files; i++)
   CloseTransientFile(fdata->fd[i]);
 }


 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);

 Assert(shared->page_number[slotno] == pageno &&
     shared->page_status[slotno] == SLRU_PAGE_WRITE_IN_PROGRESS);


 if (!ok)
  shared->page_dirty[slotno] = 1;

 shared->page_status[slotno] = SLRU_PAGE_VALID;

 LWLockRelease(&shared->buffer_locks[slotno].lock);


 if (!ok)
  SlruReportIOError(ctl, pageno, InvalidTransactionId);
}
