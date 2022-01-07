
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int * page_dirty; } ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MultiXactMemberControlLock ;
 TYPE_2__* MultiXactMemberCtl ;
 int MultiXactOffsetControlLock ;
 TYPE_2__* MultiXactOffsetCtl ;
 int SimpleLruWritePage (TYPE_2__*,int) ;
 int ZeroMultiXactMemberPage (int ,int) ;
 int ZeroMultiXactOffsetPage (int ,int) ;

void
BootStrapMultiXact(void)
{
 int slotno;

 LWLockAcquire(MultiXactOffsetControlLock, LW_EXCLUSIVE);


 slotno = ZeroMultiXactOffsetPage(0, 0);


 SimpleLruWritePage(MultiXactOffsetCtl, slotno);
 Assert(!MultiXactOffsetCtl->shared->page_dirty[slotno]);

 LWLockRelease(MultiXactOffsetControlLock);

 LWLockAcquire(MultiXactMemberControlLock, LW_EXCLUSIVE);


 slotno = ZeroMultiXactMemberPage(0, 0);


 SimpleLruWritePage(MultiXactMemberCtl, slotno);
 Assert(!MultiXactMemberCtl->shared->page_dirty[slotno]);

 LWLockRelease(MultiXactMemberControlLock);
}
