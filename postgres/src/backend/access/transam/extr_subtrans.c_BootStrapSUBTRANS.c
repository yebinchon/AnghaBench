
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int * page_dirty; } ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SimpleLruWritePage (TYPE_2__*,int) ;
 TYPE_2__* SubTransCtl ;
 int SubtransControlLock ;
 int ZeroSUBTRANSPage (int ) ;

void
BootStrapSUBTRANS(void)
{
 int slotno;

 LWLockAcquire(SubtransControlLock, LW_EXCLUSIVE);


 slotno = ZeroSUBTRANSPage(0);


 SimpleLruWritePage(SubTransCtl, slotno);
 Assert(!SubTransCtl->shared->page_dirty[slotno]);

 LWLockRelease(SubtransControlLock);
}
