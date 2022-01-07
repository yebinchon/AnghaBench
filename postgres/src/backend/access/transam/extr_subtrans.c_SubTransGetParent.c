
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {scalar_t__* page_buffer; } ;


 int Assert (int ) ;
 int InvalidTransactionId ;
 int LWLockRelease (int ) ;
 int SimpleLruReadPage_ReadOnly (TYPE_2__*,int,int ) ;
 TYPE_2__* SubTransCtl ;
 int SubtransControlLock ;
 int TransactionIdFollowsOrEquals (int ,int ) ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdToEntry (int ) ;
 int TransactionIdToPage (int ) ;
 int TransactionXmin ;

TransactionId
SubTransGetParent(TransactionId xid)
{
 int pageno = TransactionIdToPage(xid);
 int entryno = TransactionIdToEntry(xid);
 int slotno;
 TransactionId *ptr;
 TransactionId parent;


 Assert(TransactionIdFollowsOrEquals(xid, TransactionXmin));


 if (!TransactionIdIsNormal(xid))
  return InvalidTransactionId;



 slotno = SimpleLruReadPage_ReadOnly(SubTransCtl, pageno, xid);
 ptr = (TransactionId *) SubTransCtl->shared->page_buffer[slotno];
 ptr += entryno;

 parent = *ptr;

 LWLockRelease(SubtransControlLock);

 return parent;
}
