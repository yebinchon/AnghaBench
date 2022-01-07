
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int latestRemovedFullXid; int block; int node; } ;
typedef TYPE_1__ gistxlogPageReuse ;
struct TYPE_5__ {int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef int FullTransactionId ;
typedef int BlockNumber ;


 int RM_GIST_ID ;
 int SizeOfGistxlogPageReuse ;
 int XLOG_GIST_PAGE_REUSE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int ) ;

void
gistXLogPageReuse(Relation rel, BlockNumber blkno, FullTransactionId latestRemovedXid)
{
 gistxlogPageReuse xlrec_reuse;
 xlrec_reuse.node = rel->rd_node;
 xlrec_reuse.block = blkno;
 xlrec_reuse.latestRemovedFullXid = latestRemovedXid;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec_reuse, SizeOfGistxlogPageReuse);

 XLogInsert(RM_GIST_ID, XLOG_GIST_PAGE_REUSE);
}
