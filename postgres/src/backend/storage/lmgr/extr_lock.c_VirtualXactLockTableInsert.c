
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ backendId; scalar_t__ localTransactionId; } ;
typedef TYPE_1__ VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ backendId; scalar_t__ fpLocalTransactionId; int fpVXIDLock; int backendLock; } ;


 int Assert (int) ;
 scalar_t__ InvalidLocalTransactionId ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyProc ;
 int VirtualTransactionIdIsValid (TYPE_1__) ;

void
VirtualXactLockTableInsert(VirtualTransactionId vxid)
{
 Assert(VirtualTransactionIdIsValid(vxid));

 LWLockAcquire(&MyProc->backendLock, LW_EXCLUSIVE);

 Assert(MyProc->backendId == vxid.backendId);
 Assert(MyProc->fpLocalTransactionId == InvalidLocalTransactionId);
 Assert(MyProc->fpVXIDLock == 0);

 MyProc->fpVXIDLock = 1;
 MyProc->fpLocalTransactionId = vxid.localTransactionId;

 LWLockRelease(&MyProc->backendLock);
}
