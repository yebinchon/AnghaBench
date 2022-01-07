
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int tailKnownAssignedXids; int headKnownAssignedXids; int known_assigned_xids_lck; } ;


 int * KnownAssignedXids ;
 scalar_t__* KnownAssignedXidsValid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 TYPE_1__* procArray ;

__attribute__((used)) static int
KnownAssignedXidsGetAndSetXmin(TransactionId *xarray, TransactionId *xmin,
          TransactionId xmax)
{
 int count = 0;
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
  {
   TransactionId knownXid = KnownAssignedXids[i];





   if (count == 0 &&
    TransactionIdPrecedes(knownXid, *xmin))
    *xmin = knownXid;





   if (TransactionIdIsValid(xmax) &&
    TransactionIdFollowsOrEquals(knownXid, xmax))
    break;


   xarray[count++] = knownXid;
  }
 }

 return count;
}
