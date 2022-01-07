
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* PagePrecedes ) (int ,int) ;int Dir; TYPE_1__* shared; } ;
struct TYPE_7__ {int num_slots; scalar_t__* page_status; int ControlLock; int * page_dirty; int * page_number; int latest_page_number; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SLRU_PAGES_PER_SEGMENT ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_VALID ;
 int SimpleLruWaitIO (TYPE_2__*,int) ;
 int SlruInternalWritePage (TYPE_2__*,int,int *) ;
 int SlruScanDirCbDeleteCutoff ;
 int SlruScanDirectory (TYPE_2__*,int ,int*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;

void
SimpleLruTruncate(SlruCtl ctl, int cutoffPage)
{
 SlruShared shared = ctl->shared;
 int slotno;




 cutoffPage -= cutoffPage % SLRU_PAGES_PER_SEGMENT;







 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);

restart:;







 if (ctl->PagePrecedes(shared->latest_page_number, cutoffPage))
 {
  LWLockRelease(shared->ControlLock);
  ereport(LOG,
    (errmsg("could not truncate directory \"%s\": apparent wraparound",
      ctl->Dir)));
  return;
 }

 for (slotno = 0; slotno < shared->num_slots; slotno++)
 {
  if (shared->page_status[slotno] == SLRU_PAGE_EMPTY)
   continue;
  if (!ctl->PagePrecedes(shared->page_number[slotno], cutoffPage))
   continue;




  if (shared->page_status[slotno] == SLRU_PAGE_VALID &&
   !shared->page_dirty[slotno])
  {
   shared->page_status[slotno] = SLRU_PAGE_EMPTY;
   continue;
  }
  if (shared->page_status[slotno] == SLRU_PAGE_VALID)
   SlruInternalWritePage(ctl, slotno, ((void*)0));
  else
   SimpleLruWaitIO(ctl, slotno);
  goto restart;
 }

 LWLockRelease(shared->ControlLock);


 (void) SlruScanDirectory(ctl, SlruScanDirCbDeleteCutoff, &cutoffPage);
}
