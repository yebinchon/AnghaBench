
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int tailKnownAssignedXids; int headKnownAssignedXids; int known_assigned_xids_lck; } ;


 int InvalidTransactionId ;
 int * KnownAssignedXids ;
 scalar_t__* KnownAssignedXidsValid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* procArray ;

__attribute__((used)) static TransactionId
KnownAssignedXidsGetOldestXmin(void)
{
 int head,
    tail;
 int i;




 SpinLockAcquire(&procArray->known_assigned_xids_lck);
 tail = procArray->tailKnownAssignedXids;
 head = procArray->headKnownAssignedXids;
 SpinLockRelease(&procArray->known_assigned_xids_lck);

 for (i = tail; i < head; i++)
 {

  if (KnownAssignedXidsValid[i])
   return KnownAssignedXids[i];
 }

 return InvalidTransactionId;
}
