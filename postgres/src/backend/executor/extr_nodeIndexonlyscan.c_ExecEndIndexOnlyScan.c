
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_5__ {scalar_t__ ss_ScanTupleSlot; TYPE_3__ ps; } ;
struct TYPE_6__ {scalar_t__ ioss_VMBuffer; TYPE_1__ ss; scalar_t__ ioss_RuntimeContext; scalar_t__ ioss_ScanDesc; scalar_t__ ioss_RelationDesc; } ;
typedef scalar_t__ Relation ;
typedef scalar_t__ IndexScanDesc ;
typedef TYPE_2__ IndexOnlyScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_3__*) ;
 int FreeExprContext (scalar_t__,int) ;
 scalar_t__ InvalidBuffer ;
 int NoLock ;
 int ReleaseBuffer (scalar_t__) ;
 int index_close (scalar_t__,int ) ;
 int index_endscan (scalar_t__) ;

void
ExecEndIndexOnlyScan(IndexOnlyScanState *node)
{
 Relation indexRelationDesc;
 IndexScanDesc indexScanDesc;




 indexRelationDesc = node->ioss_RelationDesc;
 indexScanDesc = node->ioss_ScanDesc;


 if (node->ioss_VMBuffer != InvalidBuffer)
 {
  ReleaseBuffer(node->ioss_VMBuffer);
  node->ioss_VMBuffer = InvalidBuffer;
 }
 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 if (indexScanDesc)
  index_endscan(indexScanDesc);
 if (indexRelationDesc)
  index_close(indexRelationDesc, NoLock);
}
