
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_5__ {int latestRemovedFullXid; int block; TYPE_1__ node; } ;
typedef TYPE_2__ gistxlogPageReuse ;
typedef int StringInfo ;


 int EpochFromFullTransactionId (int ) ;
 int XidFromFullTransactionId (int ) ;
 int appendStringInfo (int ,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
out_gistxlogPageReuse(StringInfo buf, gistxlogPageReuse *xlrec)
{
 appendStringInfo(buf, "rel %u/%u/%u; blk %u; latestRemovedXid %u:%u",
      xlrec->node.spcNode, xlrec->node.dbNode,
      xlrec->node.relNode, xlrec->block,
      EpochFromFullTransactionId(xlrec->latestRemovedFullXid),
      XidFromFullTransactionId(xlrec->latestRemovedFullXid));
}
