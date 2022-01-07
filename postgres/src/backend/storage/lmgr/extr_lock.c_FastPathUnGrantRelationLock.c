
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
 scalar_t__ FAST_PATH_CHECK_LOCKMODE (TYPE_1__*,size_t,int ) ;
 int FAST_PATH_CLEAR_LOCKMODE (TYPE_1__*,size_t,int ) ;
 scalar_t__ FAST_PATH_GET_BITS (TYPE_1__*,size_t) ;
 size_t FP_LOCK_SLOTS_PER_BACKEND ;
 scalar_t__ FastPathLocalUseCount ;
 TYPE_1__* MyProc ;

__attribute__((used)) static bool
FastPathUnGrantRelationLock(Oid relid, LOCKMODE lockmode)
{
 uint32 f;
 bool result = 0;

 FastPathLocalUseCount = 0;
 for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
 {
  if (MyProc->fpRelId[f] == relid
   && FAST_PATH_CHECK_LOCKMODE(MyProc, f, lockmode))
  {
   Assert(!result);
   FAST_PATH_CLEAR_LOCKMODE(MyProc, f, lockmode);
   result = 1;

  }
  if (FAST_PATH_GET_BITS(MyProc, f) != 0)
   ++FastPathLocalUseCount;
 }
 return result;
}
