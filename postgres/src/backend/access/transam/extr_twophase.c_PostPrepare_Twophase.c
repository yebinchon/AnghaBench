
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locking_backend; } ;


 int InvalidBackendId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MyLockedGxact ;
 int TwoPhaseStateLock ;

void
PostPrepare_Twophase(void)
{
 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 MyLockedGxact->locking_backend = InvalidBackendId;
 LWLockRelease(TwoPhaseStateLock);

 MyLockedGxact = ((void*)0);
}
