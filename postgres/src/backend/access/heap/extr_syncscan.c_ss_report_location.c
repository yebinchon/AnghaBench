
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef int BlockNumber ;


 int LOG ;
 scalar_t__ LWLockConditionalAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int RelationGetRelationName (TYPE_1__*) ;
 int SYNC_SCAN_REPORT_INTERVAL ;
 int SyncScanLock ;
 int elog (int ,char*,int ,int) ;
 int ss_search (int ,int,int) ;
 scalar_t__ trace_syncscan ;

void
ss_report_location(Relation rel, BlockNumber location)
{
 if ((location % SYNC_SCAN_REPORT_INTERVAL) == 0)
 {
  if (LWLockConditionalAcquire(SyncScanLock, LW_EXCLUSIVE))
  {
   (void) ss_search(rel->rd_node, location, 1);
   LWLockRelease(SyncScanLock);
  }






 }
}
