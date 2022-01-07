
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_5__ {scalar_t__ ss_ScanTupleSlot; TYPE_3__ ps; } ;
struct TYPE_6__ {TYPE_1__ ss; scalar_t__ iss_RuntimeContext; scalar_t__ iss_ScanDesc; scalar_t__ iss_RelationDesc; } ;
typedef scalar_t__ Relation ;
typedef TYPE_2__ IndexScanState ;
typedef scalar_t__ IndexScanDesc ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_3__*) ;
 int FreeExprContext (scalar_t__,int) ;
 int NoLock ;
 int index_close (scalar_t__,int ) ;
 int index_endscan (scalar_t__) ;

void
ExecEndIndexScan(IndexScanState *node)
{
 Relation indexRelationDesc;
 IndexScanDesc indexScanDesc;




 indexRelationDesc = node->iss_RelationDesc;
 indexScanDesc = node->iss_ScanDesc;
 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 if (indexScanDesc)
  index_endscan(indexScanDesc);
 if (indexRelationDesc)
  index_close(indexRelationDesc, NoLock);
}
