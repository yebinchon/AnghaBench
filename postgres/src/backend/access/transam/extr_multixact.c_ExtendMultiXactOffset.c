
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MultiXactId ;


 scalar_t__ FirstMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MultiXactIdToOffsetEntry (scalar_t__) ;
 int MultiXactIdToOffsetPage (scalar_t__) ;
 int MultiXactOffsetControlLock ;
 int ZeroMultiXactOffsetPage (int,int) ;

__attribute__((used)) static void
ExtendMultiXactOffset(MultiXactId multi)
{
 int pageno;





 if (MultiXactIdToOffsetEntry(multi) != 0 &&
  multi != FirstMultiXactId)
  return;

 pageno = MultiXactIdToOffsetPage(multi);

 LWLockAcquire(MultiXactOffsetControlLock, LW_EXCLUSIVE);


 ZeroMultiXactOffsetPage(pageno, 1);

 LWLockRelease(MultiXactOffsetControlLock);
}
