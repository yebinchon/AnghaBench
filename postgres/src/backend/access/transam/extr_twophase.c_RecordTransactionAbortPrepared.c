
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int RelFileNode ;


 int END_CRIT_SECTION () ;
 int GetCurrentTimestamp () ;
 int MyXactFlags ;
 int PANIC ;
 int START_CRIT_SECTION () ;
 int SyncRepWaitForLSN (int ,int) ;
 int TransactionIdAbortTree (int ,int,int *) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 int XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ;
 int XLogFlush (int ) ;
 int XactLogAbortRecord (int ,int,int *,int,int *,int,int ,char const*) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
RecordTransactionAbortPrepared(TransactionId xid,
          int nchildren,
          TransactionId *children,
          int nrels,
          RelFileNode *rels,
          const char *gid)
{
 XLogRecPtr recptr;





 if (TransactionIdDidCommit(xid))
  elog(PANIC, "cannot abort transaction %u, it was already committed",
    xid);

 START_CRIT_SECTION();






 recptr = XactLogAbortRecord(GetCurrentTimestamp(),
        nchildren, children,
        nrels, rels,
        MyXactFlags | XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK,
        xid, gid);


 XLogFlush(recptr);





 TransactionIdAbortTree(xid, nchildren, children);

 END_CRIT_SECTION();







 SyncRepWaitForLSN(recptr, 0);
}
