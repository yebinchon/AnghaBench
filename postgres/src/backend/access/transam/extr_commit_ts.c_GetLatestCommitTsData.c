
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_3__ {int nodeid; int time; } ;
struct TYPE_4__ {TYPE_1__ dataLastCommit; int xidLastCommit; int commitTsActive; } ;
typedef int RepOriginId ;


 int CommitTsLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_2__* commitTsShared ;
 int error_commit_ts_disabled () ;

TransactionId
GetLatestCommitTsData(TimestampTz *ts, RepOriginId *nodeid)
{
 TransactionId xid;

 LWLockAcquire(CommitTsLock, LW_SHARED);


 if (!commitTsShared->commitTsActive)
  error_commit_ts_disabled();

 xid = commitTsShared->xidLastCommit;
 if (ts)
  *ts = commitTsShared->dataLastCommit.time;
 if (nodeid)
  *nodeid = commitTsShared->dataLastCommit.nodeid;
 LWLockRelease(CommitTsLock);

 return xid;
}
