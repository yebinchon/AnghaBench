
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
typedef size_t int32 ;
typedef int TransactionId ;
struct TYPE_3__ {size_t subxcnt; size_t xcnt; int * subxip; int xmin; scalar_t__ suboverflowed; int * xip; int takenDuringRecovery; int xmax; } ;
typedef TYPE_1__* Snapshot ;


 int SubTransGetTopmostTransaction (int ) ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

bool
XidInMVCCSnapshot(TransactionId xid, Snapshot snapshot)
{
 uint32 i;
 if (TransactionIdPrecedes(xid, snapshot->xmin))
  return 0;

 if (TransactionIdFollowsOrEquals(xid, snapshot->xmax))
  return 1;





 if (!snapshot->takenDuringRecovery)
 {







  if (!snapshot->suboverflowed)
  {

   int32 j;

   for (j = 0; j < snapshot->subxcnt; j++)
   {
    if (TransactionIdEquals(xid, snapshot->subxip[j]))
     return 1;
   }


  }
  else
  {




   xid = SubTransGetTopmostTransaction(xid);






   if (TransactionIdPrecedes(xid, snapshot->xmin))
    return 0;
  }

  for (i = 0; i < snapshot->xcnt; i++)
  {
   if (TransactionIdEquals(xid, snapshot->xip[i]))
    return 1;
  }
 }
 else
 {
  int32 j;
  if (snapshot->suboverflowed)
  {




   xid = SubTransGetTopmostTransaction(xid);






   if (TransactionIdPrecedes(xid, snapshot->xmin))
    return 0;
  }






  for (j = 0; j < snapshot->subxcnt; j++)
  {
   if (TransactionIdEquals(xid, snapshot->subxip[j]))
    return 1;
  }
 }

 return 0;
}
