
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* TransactionId ;
typedef int TimestampTz ;
struct TYPE_6__ {void* newestCommitTsXid; } ;
struct TYPE_4__ {int nodeid; int time; } ;
struct TYPE_5__ {TYPE_1__ dataLastCommit; void* xidLastCommit; int commitTsActive; } ;
typedef int RepOriginId ;


 int CommitTsLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SetXidCommitTsInPage (void*,int,void**,int ,int ,int) ;
 TYPE_3__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 int TransactionIdToCTsPage (void*) ;
 int WriteSetTimestampXlogRec (void*,int,void**,int ,int ) ;
 TYPE_2__* commitTsShared ;

void
TransactionTreeSetCommitTsData(TransactionId xid, int nsubxids,
          TransactionId *subxids, TimestampTz timestamp,
          RepOriginId nodeid, bool write_xlog)
{
 int i;
 TransactionId headxid;
 TransactionId newestXact;
 if (!commitTsShared->commitTsActive)
  return;





 if (write_xlog)
  WriteSetTimestampXlogRec(xid, nsubxids, subxids, timestamp, nodeid);





 if (nsubxids > 0)
  newestXact = subxids[nsubxids - 1];
 else
  newestXact = xid;
 for (i = 0, headxid = xid;;)
 {
  int pageno = TransactionIdToCTsPage(headxid);
  int j;

  for (j = i; j < nsubxids; j++)
  {
   if (TransactionIdToCTsPage(subxids[j]) != pageno)
    break;
  }


  SetXidCommitTsInPage(headxid, j - i, subxids + i, timestamp, nodeid,
        pageno);


  if (j + 1 >= nsubxids)
   break;





  headxid = subxids[j];
  i += j - i + 1;
 }


 LWLockAcquire(CommitTsLock, LW_EXCLUSIVE);
 commitTsShared->xidLastCommit = xid;
 commitTsShared->dataLastCommit.time = timestamp;
 commitTsShared->dataLastCommit.nodeid = nodeid;


 if (TransactionIdPrecedes(ShmemVariableCache->newestCommitTsXid, newestXact))
  ShmemVariableCache->newestCommitTsXid = newestXact;
 LWLockRelease(CommitTsLock);
}
