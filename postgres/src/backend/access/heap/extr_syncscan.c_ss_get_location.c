
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef scalar_t__ BlockNumber ;


 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int RelationGetRelationName (TYPE_1__*) ;
 int SyncScanLock ;
 int elog (int ,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ss_search (int ,int ,int) ;
 scalar_t__ trace_syncscan ;

BlockNumber
ss_get_location(Relation rel, BlockNumber relnblocks)
{
 BlockNumber startloc;

 LWLockAcquire(SyncScanLock, LW_EXCLUSIVE);
 startloc = ss_search(rel->rd_node, 0, 0);
 LWLockRelease(SyncScanLock);







 if (startloc >= relnblocks)
  startloc = 0;
 return startloc;
}
