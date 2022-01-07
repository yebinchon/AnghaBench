
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XidStatus ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_6__ {scalar_t__ xid; int nxids; } ;
struct TYPE_4__ {int xids; } ;
struct TYPE_5__ {TYPE_1__ subxids; } ;


 int Assert (int) ;
 int CLogControlLock ;
 int LWLockAcquire (int ,int ) ;
 scalar_t__ LWLockConditionalAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_3__* MyPgXact ;
 TYPE_2__* MyProc ;
 int PGPROC_MAX_CACHED_SUBXIDS ;
 int StaticAssertStmt (int,char*) ;
 int THRESHOLD_SUBTRANS_CLOG_OPT ;
 scalar_t__ TransactionGroupUpdateXidStatus (scalar_t__,int ,int ,int) ;
 int TransactionIdSetPageStatusInternal (scalar_t__,int,scalar_t__*,int ,int ,int) ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;

__attribute__((used)) static void
TransactionIdSetPageStatus(TransactionId xid, int nsubxids,
         TransactionId *subxids, XidStatus status,
         XLogRecPtr lsn, int pageno,
         bool all_xact_same_page)
{

 StaticAssertStmt(THRESHOLD_SUBTRANS_CLOG_OPT <= PGPROC_MAX_CACHED_SUBXIDS,
      "group clog threshold less than PGPROC cached subxids");
 if (all_xact_same_page && xid == MyPgXact->xid &&
  nsubxids <= THRESHOLD_SUBTRANS_CLOG_OPT &&
  nsubxids == MyPgXact->nxids &&
  memcmp(subxids, MyProc->subxids.xids,
      nsubxids * sizeof(TransactionId)) == 0)
 {





  Assert(THRESHOLD_SUBTRANS_CLOG_OPT <= PGPROC_MAX_CACHED_SUBXIDS);







  if (LWLockConditionalAcquire(CLogControlLock, LW_EXCLUSIVE))
  {

   TransactionIdSetPageStatusInternal(xid, nsubxids, subxids, status,
              lsn, pageno);
   LWLockRelease(CLogControlLock);
   return;
  }
  else if (TransactionGroupUpdateXidStatus(xid, status, lsn, pageno))
  {

   return;
  }


 }


 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);
 TransactionIdSetPageStatusInternal(xid, nsubxids, subxids, status,
            lsn, pageno);
 LWLockRelease(CLogControlLock);
}
