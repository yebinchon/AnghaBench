
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int* page_dirty; scalar_t__* page_buffer; } ;


 int Assert (int) ;
 scalar_t__ InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SimpleLruReadPage (TYPE_2__*,int,int,scalar_t__) ;
 TYPE_2__* SubTransCtl ;
 int SubtransControlLock ;
 int TransactionIdFollows (scalar_t__,scalar_t__) ;
 int TransactionIdIsValid (scalar_t__) ;
 int TransactionIdToEntry (scalar_t__) ;
 int TransactionIdToPage (scalar_t__) ;

void
SubTransSetParent(TransactionId xid, TransactionId parent)
{
 int pageno = TransactionIdToPage(xid);
 int entryno = TransactionIdToEntry(xid);
 int slotno;
 TransactionId *ptr;

 Assert(TransactionIdIsValid(parent));
 Assert(TransactionIdFollows(xid, parent));

 LWLockAcquire(SubtransControlLock, LW_EXCLUSIVE);

 slotno = SimpleLruReadPage(SubTransCtl, pageno, 1, xid);
 ptr = (TransactionId *) SubTransCtl->shared->page_buffer[slotno];
 ptr += entryno;






 if (*ptr != parent)
 {
  Assert(*ptr == InvalidTransactionId);
  *ptr = parent;
  SubTransCtl->shared->page_dirty[slotno] = 1;
 }

 LWLockRelease(SubtransControlLock);
}
