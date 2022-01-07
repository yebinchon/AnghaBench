
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_7__ {TYPE_1__* shared; } ;
struct TYPE_6__ {int num_slots; int* page_number; scalar_t__* page_status; int ControlLock; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_READ_IN_PROGRESS ;
 int SimpleLruReadPage (TYPE_2__*,int,int,int ) ;
 int SlruRecentlyUsed (TYPE_1__*,int) ;

int
SimpleLruReadPage_ReadOnly(SlruCtl ctl, int pageno, TransactionId xid)
{
 SlruShared shared = ctl->shared;
 int slotno;


 LWLockAcquire(shared->ControlLock, LW_SHARED);


 for (slotno = 0; slotno < shared->num_slots; slotno++)
 {
  if (shared->page_number[slotno] == pageno &&
   shared->page_status[slotno] != SLRU_PAGE_EMPTY &&
   shared->page_status[slotno] != SLRU_PAGE_READ_IN_PROGRESS)
  {

   SlruRecentlyUsed(shared, slotno);
   return slotno;
  }
 }


 LWLockRelease(shared->ControlLock);
 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);

 return SimpleLruReadPage(ctl, pageno, 1, xid);
}
