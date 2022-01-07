
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TransactionId ;


 int TRANSACTION_STATUS_COMMITTED ;
 int TransactionIdSetTreeStatus (int ,int,int *,int ,int ) ;

void
TransactionIdAsyncCommitTree(TransactionId xid, int nxids, TransactionId *xids,
        XLogRecPtr lsn)
{
 TransactionIdSetTreeStatus(xid, nxids, xids,
          TRANSACTION_STATUS_COMMITTED, lsn);
}
