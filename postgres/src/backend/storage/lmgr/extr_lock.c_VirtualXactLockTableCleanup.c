
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int localTransactionId; int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ backendId; int fpVXIDLock; int backendLock; int fpLocalTransactionId; } ;
typedef int LocalTransactionId ;
typedef int LOCKTAG ;


 int Assert (int) ;
 size_t DEFAULT_LOCKMETHOD ;
 int ExclusiveLock ;
 scalar_t__ InvalidBackendId ;
 int InvalidLocalTransactionId ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ LocalTransactionIdIsValid (int ) ;
 int * LockMethods ;
 int LockRefindAndRelease (int ,TYPE_3__*,int *,int ,int) ;
 int MyBackendId ;
 TYPE_3__* MyProc ;
 int SET_LOCKTAG_VIRTUALTRANSACTION (int ,TYPE_1__) ;

void
VirtualXactLockTableCleanup(void)
{
 bool fastpath;
 LocalTransactionId lxid;

 Assert(MyProc->backendId != InvalidBackendId);




 LWLockAcquire(&MyProc->backendLock, LW_EXCLUSIVE);

 fastpath = MyProc->fpVXIDLock;
 lxid = MyProc->fpLocalTransactionId;
 MyProc->fpVXIDLock = 0;
 MyProc->fpLocalTransactionId = InvalidLocalTransactionId;

 LWLockRelease(&MyProc->backendLock);





 if (!fastpath && LocalTransactionIdIsValid(lxid))
 {
  VirtualTransactionId vxid;
  LOCKTAG locktag;

  vxid.backendId = MyBackendId;
  vxid.localTransactionId = lxid;
  SET_LOCKTAG_VIRTUALTRANSACTION(locktag, vxid);

  LockRefindAndRelease(LockMethods[DEFAULT_LOCKMETHOD], MyProc,
        &locktag, ExclusiveLock, 0);
 }
}
