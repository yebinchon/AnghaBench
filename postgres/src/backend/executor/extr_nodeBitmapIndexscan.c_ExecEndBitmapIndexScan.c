
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ biss_RuntimeContext; scalar_t__ biss_ScanDesc; scalar_t__ biss_RelationDesc; } ;
typedef scalar_t__ Relation ;
typedef scalar_t__ IndexScanDesc ;
typedef TYPE_1__ BitmapIndexScanState ;


 int FreeExprContext (scalar_t__,int) ;
 int NoLock ;
 int index_close (scalar_t__,int ) ;
 int index_endscan (scalar_t__) ;

void
ExecEndBitmapIndexScan(BitmapIndexScanState *node)
{
 Relation indexRelationDesc;
 IndexScanDesc indexScanDesc;




 indexRelationDesc = node->biss_RelationDesc;
 indexScanDesc = node->biss_ScanDesc;
 if (indexScanDesc)
  index_endscan(indexScanDesc);
 if (indexRelationDesc)
  index_close(indexRelationDesc, NoLock);
}
