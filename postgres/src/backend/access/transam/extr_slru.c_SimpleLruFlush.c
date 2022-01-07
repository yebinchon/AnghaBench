
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ do_fsync; TYPE_1__* shared; } ;
struct TYPE_9__ {int num_files; int* segno; int * fd; } ;
struct TYPE_8__ {int num_slots; scalar_t__* page_status; int ControlLock; int * page_dirty; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__ SlruFlushData ;
typedef TYPE_3__* SlruCtl ;


 int Assert (int) ;
 scalar_t__ CloseTransientFile (int ) ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SLRU_CLOSE_FAILED ;
 int SLRU_FSYNC_FAILED ;
 int SLRU_PAGES_PER_SEGMENT ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_VALID ;
 int SlruInternalWritePage (TYPE_3__*,int,TYPE_2__*) ;
 int SlruReportIOError (TYPE_3__*,int,int ) ;
 int WAIT_EVENT_SLRU_FLUSH_SYNC ;
 int errno ;
 scalar_t__ pg_fsync (int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int slru_errcause ;
 int slru_errno ;

void
SimpleLruFlush(SlruCtl ctl, bool allow_redirtied)
{
 SlruShared shared = ctl->shared;
 SlruFlushData fdata;
 int slotno;
 int pageno = 0;
 int i;
 bool ok;




 fdata.num_files = 0;

 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);

 for (slotno = 0; slotno < shared->num_slots; slotno++)
 {
  SlruInternalWritePage(ctl, slotno, &fdata);






  Assert(allow_redirtied ||
      shared->page_status[slotno] == SLRU_PAGE_EMPTY ||
      (shared->page_status[slotno] == SLRU_PAGE_VALID &&
    !shared->page_dirty[slotno]));
 }

 LWLockRelease(shared->ControlLock);




 ok = 1;
 for (i = 0; i < fdata.num_files; i++)
 {
  pgstat_report_wait_start(WAIT_EVENT_SLRU_FLUSH_SYNC);
  if (ctl->do_fsync && pg_fsync(fdata.fd[i]) != 0)
  {
   slru_errcause = SLRU_FSYNC_FAILED;
   slru_errno = errno;
   pageno = fdata.segno[i] * SLRU_PAGES_PER_SEGMENT;
   ok = 0;
  }
  pgstat_report_wait_end();

  if (CloseTransientFile(fdata.fd[i]) != 0)
  {
   slru_errcause = SLRU_CLOSE_FAILED;
   slru_errno = errno;
   pageno = fdata.segno[i] * SLRU_PAGES_PER_SEGMENT;
   ok = 0;
  }
 }
 if (!ok)
  SlruReportIOError(ctl, pageno, InvalidTransactionId);
}
