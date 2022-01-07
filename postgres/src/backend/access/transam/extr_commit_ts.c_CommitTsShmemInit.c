
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int PagePrecedes; } ;
struct TYPE_6__ {int nodeid; int time; } ;
struct TYPE_7__ {int commitTsActive; TYPE_1__ dataLastCommit; int xidLastCommit; } ;
typedef int CommitTimestampShared ;


 int Assert (int) ;
 int CommitTsControlLock ;
 TYPE_3__* CommitTsCtl ;
 int CommitTsPagePrecedes ;
 int CommitTsShmemBuffers () ;
 int InvalidRepOriginId ;
 int InvalidTransactionId ;
 int IsUnderPostmaster ;
 int LWTRANCHE_COMMITTS_BUFFERS ;
 TYPE_2__* ShmemInitStruct (char*,int,int*) ;
 int SimpleLruInit (TYPE_3__*,char*,int ,int ,int ,char*,int ) ;
 int TIMESTAMP_NOBEGIN (int ) ;
 TYPE_2__* commitTsShared ;

void
CommitTsShmemInit(void)
{
 bool found;

 CommitTsCtl->PagePrecedes = CommitTsPagePrecedes;
 SimpleLruInit(CommitTsCtl, "commit_timestamp", CommitTsShmemBuffers(), 0,
      CommitTsControlLock, "pg_commit_ts",
      LWTRANCHE_COMMITTS_BUFFERS);

 commitTsShared = ShmemInitStruct("CommitTs shared",
          sizeof(CommitTimestampShared),
          &found);

 if (!IsUnderPostmaster)
 {
  Assert(!found);

  commitTsShared->xidLastCommit = InvalidTransactionId;
  TIMESTAMP_NOBEGIN(commitTsShared->dataLastCommit.time);
  commitTsShared->dataLastCommit.nodeid = InvalidRepOriginId;
  commitTsShared->commitTsActive = 0;
 }
 else
  Assert(found);
}
