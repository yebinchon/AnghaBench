
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int RelFileNode ;
typedef int Page ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int PageIsNew (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_XLOG_ID ;
 int XLOG_FPI ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBlock (int ,int *,int ,int ,int ,int) ;

XLogRecPtr
log_newpage(RelFileNode *rnode, ForkNumber forkNum, BlockNumber blkno,
   Page page, bool page_std)
{
 int flags;
 XLogRecPtr recptr;

 flags = REGBUF_FORCE_IMAGE;
 if (page_std)
  flags |= REGBUF_STANDARD;

 XLogBeginInsert();
 XLogRegisterBlock(0, rnode, forkNum, blkno, page, flags);
 recptr = XLogInsert(RM_XLOG_ID, XLOG_FPI);





 if (!PageIsNew(page))
 {
  PageSetLSN(page, recptr);
 }

 return recptr;
}
