
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cmin; scalar_t__ cmax; int combocid; int target_tid; int target_node; int top_xid; } ;
typedef TYPE_1__ xl_heap_new_cid ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_6__ {int reorder; } ;
typedef TYPE_2__ SnapBuild ;
typedef scalar_t__ CommandId ;


 int ERROR ;
 scalar_t__ InvalidCommandId ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 int ReorderBufferAddNewCommandId (int ,int ,int ,scalar_t__) ;
 int ReorderBufferAddNewTupleCids (int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int ReorderBufferXidSetCatalogChanges (int ,int ,int ) ;
 int elog (int ,char*) ;

void
SnapBuildProcessNewCid(SnapBuild *builder, TransactionId xid,
        XLogRecPtr lsn, xl_heap_new_cid *xlrec)
{
 CommandId cid;





 ReorderBufferXidSetCatalogChanges(builder->reorder, xid, lsn);

 ReorderBufferAddNewTupleCids(builder->reorder, xlrec->top_xid, lsn,
         xlrec->target_node, xlrec->target_tid,
         xlrec->cmin, xlrec->cmax,
         xlrec->combocid);


 if (xlrec->cmin != InvalidCommandId &&
  xlrec->cmax != InvalidCommandId)
  cid = Max(xlrec->cmin, xlrec->cmax);
 else if (xlrec->cmax != InvalidCommandId)
  cid = xlrec->cmax;
 else if (xlrec->cmin != InvalidCommandId)
  cid = xlrec->cmin;
 else
 {
  cid = InvalidCommandId;
  elog(ERROR, "xl_heap_new_cid record without a valid CommandId");
 }

 ReorderBufferAddNewCommandId(builder->reorder, xid, lsn, cid + 1);
}
