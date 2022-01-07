
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int * page_dirty; } ;


 int Assert (int) ;
 int CLogControlLock ;
 TYPE_2__* ClogCtl ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SimpleLruWritePage (TYPE_2__*,int) ;
 int ZeroCLOGPage (int ,int) ;

void
BootStrapCLOG(void)
{
 int slotno;

 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);


 slotno = ZeroCLOGPage(0, 0);


 SimpleLruWritePage(ClogCtl, slotno);
 Assert(!ClogCtl->shared->page_dirty[slotno]);

 LWLockRelease(CLogControlLock);
}
