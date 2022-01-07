
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef scalar_t__ TimestampTz ;
struct TYPE_2__ {int delayChkpt; } ;
typedef int SharedInvalidationMessage ;
typedef int RelFileNode ;


 scalar_t__ DoNotReplicateId ;
 int END_CRIT_SECTION () ;
 scalar_t__ GetCurrentTimestamp () ;
 scalar_t__ InvalidRepOriginId ;
 TYPE_1__* MyPgXact ;
 int MyXactFlags ;
 int START_CRIT_SECTION () ;
 int SyncRepWaitForLSN (int ,int) ;
 int TransactionIdCommitTree (int ,int,int *) ;
 int TransactionTreeSetCommitTsData (int ,int,int *,scalar_t__,scalar_t__,int) ;
 int XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ;
 int XLogFlush (int ) ;
 int XactLastRecEnd ;
 int XactLogCommitRecord (scalar_t__,int,int *,int,int *,int,int *,int,int,int,int ,char const*) ;
 int replorigin_session_advance (int ,int ) ;
 scalar_t__ replorigin_session_origin ;
 int replorigin_session_origin_lsn ;
 scalar_t__ replorigin_session_origin_timestamp ;

__attribute__((used)) static void
RecordTransactionCommitPrepared(TransactionId xid,
        int nchildren,
        TransactionId *children,
        int nrels,
        RelFileNode *rels,
        int ninvalmsgs,
        SharedInvalidationMessage *invalmsgs,
        bool initfileinval,
        const char *gid)
{
 XLogRecPtr recptr;
 TimestampTz committs = GetCurrentTimestamp();
 bool replorigin;





 replorigin = (replorigin_session_origin != InvalidRepOriginId &&
      replorigin_session_origin != DoNotReplicateId);

 START_CRIT_SECTION();


 MyPgXact->delayChkpt = 1;






 recptr = XactLogCommitRecord(committs,
         nchildren, children, nrels, rels,
         ninvalmsgs, invalmsgs,
         initfileinval, 0,
         MyXactFlags | XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK,
         xid, gid);


 if (replorigin)

  replorigin_session_advance(replorigin_session_origin_lsn,
           XactLastRecEnd);
 if (!replorigin || replorigin_session_origin_timestamp == 0)
  replorigin_session_origin_timestamp = committs;

 TransactionTreeSetCommitTsData(xid, nchildren, children,
           replorigin_session_origin_timestamp,
           replorigin_session_origin, 0);
 XLogFlush(recptr);


 TransactionIdCommitTree(xid, nchildren, children);


 MyPgXact->delayChkpt = 0;

 END_CRIT_SECTION();







 SyncRepWaitForLSN(recptr, 1);
}
