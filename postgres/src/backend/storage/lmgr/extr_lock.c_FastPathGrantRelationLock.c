
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_5__ {scalar_t__* fpRelId; } ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;


 int Assert (int) ;
 int FAST_PATH_CHECK_LOCKMODE (TYPE_1__*,size_t,int ) ;
 scalar_t__ FAST_PATH_GET_BITS (TYPE_1__*,size_t) ;
 int FAST_PATH_SET_LOCKMODE (TYPE_1__*,size_t,int ) ;
 size_t FP_LOCK_SLOTS_PER_BACKEND ;
 int FastPathLocalUseCount ;
 TYPE_1__* MyProc ;

__attribute__((used)) static bool
FastPathGrantRelationLock(Oid relid, LOCKMODE lockmode)
{
 uint32 f;
 uint32 unused_slot = FP_LOCK_SLOTS_PER_BACKEND;


 for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
 {
  if (FAST_PATH_GET_BITS(MyProc, f) == 0)
   unused_slot = f;
  else if (MyProc->fpRelId[f] == relid)
  {
   Assert(!FAST_PATH_CHECK_LOCKMODE(MyProc, f, lockmode));
   FAST_PATH_SET_LOCKMODE(MyProc, f, lockmode);
   return 1;
  }
 }


 if (unused_slot < FP_LOCK_SLOTS_PER_BACKEND)
 {
  MyProc->fpRelId[unused_slot] = relid;
  FAST_PATH_SET_LOCKMODE(MyProc, unused_slot, lockmode);
  ++FastPathLocalUseCount;
  return 1;
 }


 return 0;
}
