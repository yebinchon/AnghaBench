
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ headKnownAssignedXids; scalar_t__ tailKnownAssignedXids; scalar_t__ numKnownAssignedXids; } ;
typedef TYPE_1__ ProcArrayStruct ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 TYPE_1__* procArray ;

__attribute__((used)) static void
KnownAssignedXidsReset(void)
{
 ProcArrayStruct *pArray = procArray;

 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 pArray->numKnownAssignedXids = 0;
 pArray->tailKnownAssignedXids = 0;
 pArray->headKnownAssignedXids = 0;

 LWLockRelease(ProcArrayLock);
}
