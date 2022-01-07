
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locking_backend; int valid; } ;


 int InvalidBackendId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MyLockedGxact ;
 int RemoveGXact (TYPE_1__*) ;
 int TwoPhaseStateLock ;

void
AtAbort_Twophase(void)
{
 if (MyLockedGxact == ((void*)0))
  return;
 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 if (!MyLockedGxact->valid)
  RemoveGXact(MyLockedGxact);
 else
  MyLockedGxact->locking_backend = InvalidBackendId;
 LWLockRelease(TwoPhaseStateLock);

 MyLockedGxact = ((void*)0);
}
