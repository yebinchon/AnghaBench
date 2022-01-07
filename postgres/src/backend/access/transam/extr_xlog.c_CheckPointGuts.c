
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;


 int CheckPointBuffers (int) ;
 int CheckPointCLOG () ;
 int CheckPointCommitTs () ;
 int CheckPointLogicalRewriteHeap () ;
 int CheckPointMultiXact () ;
 int CheckPointPredicate () ;
 int CheckPointRelationMap () ;
 int CheckPointReplicationOrigin () ;
 int CheckPointReplicationSlots () ;
 int CheckPointSUBTRANS () ;
 int CheckPointSnapBuild () ;
 int CheckPointTwoPhase (int ) ;

__attribute__((used)) static void
CheckPointGuts(XLogRecPtr checkPointRedo, int flags)
{
 CheckPointCLOG();
 CheckPointCommitTs();
 CheckPointSUBTRANS();
 CheckPointMultiXact();
 CheckPointPredicate();
 CheckPointRelationMap();
 CheckPointReplicationSlots();
 CheckPointSnapBuild();
 CheckPointLogicalRewriteHeap();
 CheckPointBuffers(flags);
 CheckPointReplicationOrigin();

 CheckPointTwoPhase(checkPointRedo);
}
