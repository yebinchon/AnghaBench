
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_3__ {int tailKnownAssignedXids; int headKnownAssignedXids; scalar_t__ numKnownAssignedXids; int known_assigned_xids_lck; } ;
typedef TYPE_1__ ProcArrayStruct ;


 int Assert (int) ;
 scalar_t__* KnownAssignedXids ;
 int* KnownAssignedXidsValid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 TYPE_1__* procArray ;

__attribute__((used)) static bool
KnownAssignedXidsSearch(TransactionId xid, bool remove)
{
 ProcArrayStruct *pArray = procArray;
 int first,
    last;
 int head;
 int tail;
 int result_index = -1;

 if (remove)
 {

  tail = pArray->tailKnownAssignedXids;
  head = pArray->headKnownAssignedXids;
 }
 else
 {

  SpinLockAcquire(&pArray->known_assigned_xids_lck);
  tail = pArray->tailKnownAssignedXids;
  head = pArray->headKnownAssignedXids;
  SpinLockRelease(&pArray->known_assigned_xids_lck);
 }





 first = tail;
 last = head - 1;
 while (first <= last)
 {
  int mid_index;
  TransactionId mid_xid;

  mid_index = (first + last) / 2;
  mid_xid = KnownAssignedXids[mid_index];

  if (xid == mid_xid)
  {
   result_index = mid_index;
   break;
  }
  else if (TransactionIdPrecedes(xid, mid_xid))
   last = mid_index - 1;
  else
   first = mid_index + 1;
 }

 if (result_index < 0)
  return 0;

 if (!KnownAssignedXidsValid[result_index])
  return 0;

 if (remove)
 {
  KnownAssignedXidsValid[result_index] = 0;

  pArray->numKnownAssignedXids--;
  Assert(pArray->numKnownAssignedXids >= 0);





  if (result_index == tail)
  {
   tail++;
   while (tail < head && !KnownAssignedXidsValid[tail])
    tail++;
   if (tail >= head)
   {

    pArray->headKnownAssignedXids = 0;
    pArray->tailKnownAssignedXids = 0;
   }
   else
   {
    pArray->tailKnownAssignedXids = tail;
   }
  }
 }

 return 1;
}
