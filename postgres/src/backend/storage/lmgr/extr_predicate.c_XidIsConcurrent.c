
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
typedef scalar_t__ TransactionId ;
struct TYPE_3__ {size_t xcnt; scalar_t__* xip; int xmax; int xmin; } ;
typedef TYPE_1__* Snapshot ;


 int Assert (int) ;
 int GetTopTransactionIdIfAny () ;
 TYPE_1__* GetTransactionSnapshot () ;
 int TransactionIdEquals (scalar_t__,int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (scalar_t__,int ) ;
 int TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,int ) ;

__attribute__((used)) static bool
XidIsConcurrent(TransactionId xid)
{
 Snapshot snap;
 uint32 i;

 Assert(TransactionIdIsValid(xid));
 Assert(!TransactionIdEquals(xid, GetTopTransactionIdIfAny()));

 snap = GetTransactionSnapshot();

 if (TransactionIdPrecedes(xid, snap->xmin))
  return 0;

 if (TransactionIdFollowsOrEquals(xid, snap->xmax))
  return 1;

 for (i = 0; i < snap->xcnt; i++)
 {
  if (xid == snap->xip[i])
   return 1;
 }

 return 0;
}
