
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nextMXact; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MultiXactIdToOffsetPage (int ) ;
 int MultiXactOffsetControlLock ;
 int MultiXactOffsetCtl ;
 TYPE_1__* MultiXactState ;
 int SimpleLruDoesPhysicalPageExist (int ,int) ;
 int SimpleLruWritePage (int ,int) ;
 int ZeroMultiXactOffsetPage (int,int) ;

__attribute__((used)) static void
MaybeExtendOffsetSlru(void)
{
 int pageno;

 pageno = MultiXactIdToOffsetPage(MultiXactState->nextMXact);

 LWLockAcquire(MultiXactOffsetControlLock, LW_EXCLUSIVE);

 if (!SimpleLruDoesPhysicalPageExist(MultiXactOffsetCtl, pageno))
 {
  int slotno;






  slotno = ZeroMultiXactOffsetPage(pageno, 0);
  SimpleLruWritePage(MultiXactOffsetCtl, slotno);
 }

 LWLockRelease(MultiXactOffsetControlLock);
}
