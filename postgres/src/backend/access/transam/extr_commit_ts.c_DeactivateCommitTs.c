
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* newestCommitTsXid; void* oldestCommitTsXid; } ;
struct TYPE_4__ {int nodeid; int time; } ;
struct TYPE_5__ {int commitTsActive; TYPE_1__ dataLastCommit; void* xidLastCommit; } ;


 int CommitTsControlLock ;
 int CommitTsCtl ;
 int CommitTsLock ;
 int InvalidRepOriginId ;
 void* InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_3__* ShmemVariableCache ;
 int SlruScanDirCbDeleteAll ;
 int SlruScanDirectory (int ,int ,int *) ;
 int TIMESTAMP_NOBEGIN (int ) ;
 TYPE_2__* commitTsShared ;

__attribute__((used)) static void
DeactivateCommitTs(void)
{







 LWLockAcquire(CommitTsLock, LW_EXCLUSIVE);

 commitTsShared->commitTsActive = 0;
 commitTsShared->xidLastCommit = InvalidTransactionId;
 TIMESTAMP_NOBEGIN(commitTsShared->dataLastCommit.time);
 commitTsShared->dataLastCommit.nodeid = InvalidRepOriginId;

 ShmemVariableCache->oldestCommitTsXid = InvalidTransactionId;
 ShmemVariableCache->newestCommitTsXid = InvalidTransactionId;

 LWLockRelease(CommitTsLock);
 LWLockAcquire(CommitTsControlLock, LW_EXCLUSIVE);
 (void) SlruScanDirectory(CommitTsCtl, SlruScanDirCbDeleteAll, ((void*)0));
 LWLockRelease(CommitTsControlLock);
}
