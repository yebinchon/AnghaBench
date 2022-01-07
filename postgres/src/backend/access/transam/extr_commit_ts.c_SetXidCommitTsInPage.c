
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int* page_dirty; } ;
typedef int RepOriginId ;


 int CommitTsControlLock ;
 TYPE_2__* CommitTsCtl ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SimpleLruReadPage (TYPE_2__*,int,int,int ) ;
 int TransactionIdSetCommitTs (int ,int ,int ,int) ;

__attribute__((used)) static void
SetXidCommitTsInPage(TransactionId xid, int nsubxids,
      TransactionId *subxids, TimestampTz ts,
      RepOriginId nodeid, int pageno)
{
 int slotno;
 int i;

 LWLockAcquire(CommitTsControlLock, LW_EXCLUSIVE);

 slotno = SimpleLruReadPage(CommitTsCtl, pageno, 1, xid);

 TransactionIdSetCommitTs(xid, ts, nodeid, slotno);
 for (i = 0; i < nsubxids; i++)
  TransactionIdSetCommitTs(subxids[i], ts, nodeid, slotno);

 CommitTsCtl->shared->page_dirty[slotno] = 1;

 LWLockRelease(CommitTsControlLock);
}
