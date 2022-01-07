
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* shared; } ;
struct TYPE_6__ {scalar_t__* page_status; int* page_dirty; TYPE_1__* buffer_locks; int * ControlLock; } ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__* SlruShared ;
typedef TYPE_3__* SlruCtl ;


 int LWLockAcquire (int *,int ) ;
 scalar_t__ LWLockConditionalAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_READ_IN_PROGRESS ;
 scalar_t__ SLRU_PAGE_VALID ;
 scalar_t__ SLRU_PAGE_WRITE_IN_PROGRESS ;

__attribute__((used)) static void
SimpleLruWaitIO(SlruCtl ctl, int slotno)
{
 SlruShared shared = ctl->shared;


 LWLockRelease(shared->ControlLock);
 LWLockAcquire(&shared->buffer_locks[slotno].lock, LW_SHARED);
 LWLockRelease(&shared->buffer_locks[slotno].lock);
 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);
 if (shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS ||
  shared->page_status[slotno] == SLRU_PAGE_WRITE_IN_PROGRESS)
 {
  if (LWLockConditionalAcquire(&shared->buffer_locks[slotno].lock, LW_SHARED))
  {

   if (shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS)
    shared->page_status[slotno] = SLRU_PAGE_EMPTY;
   else
   {
    shared->page_status[slotno] = SLRU_PAGE_VALID;
    shared->page_dirty[slotno] = 1;
   }
   LWLockRelease(&shared->buffer_locks[slotno].lock);
  }
 }
}
