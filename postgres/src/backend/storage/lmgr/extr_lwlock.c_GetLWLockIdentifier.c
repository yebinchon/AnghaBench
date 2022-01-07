
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef size_t uint16 ;


 int Assert (int) ;
 char const** LWLockTrancheArray ;
 size_t LWLockTranchesAllocated ;
 scalar_t__ PG_WAIT_LWLOCK ;

const char *
GetLWLockIdentifier(uint32 classId, uint16 eventId)
{
 Assert(classId == PG_WAIT_LWLOCK);






 if (eventId >= LWLockTranchesAllocated ||
  LWLockTrancheArray[eventId] == ((void*)0))
  return "extension";

 return LWLockTrancheArray[eventId];
}
