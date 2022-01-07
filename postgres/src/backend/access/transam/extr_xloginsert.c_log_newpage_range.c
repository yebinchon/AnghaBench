
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int Relation ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int END_CRIT_SECTION () ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageIsNew (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_XLOG_ID ;
 int ReadBuffer (int ,scalar_t__) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_FPI ;
 int XLR_MAX_BLOCK_ID ;
 int XLogBeginInsert () ;
 int XLogEnsureRecordSpace (int,int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int) ;

void
log_newpage_range(Relation rel, ForkNumber forkNum,
      BlockNumber startblk, BlockNumber endblk,
      bool page_std)
{
 BlockNumber blkno;






 XLogEnsureRecordSpace(XLR_MAX_BLOCK_ID - 1, 0);

 blkno = startblk;
 while (blkno < endblk)
 {
  Buffer bufpack[XLR_MAX_BLOCK_ID];
  XLogRecPtr recptr;
  int nbufs;
  int i;

  CHECK_FOR_INTERRUPTS();


  nbufs = 0;
  while (nbufs < XLR_MAX_BLOCK_ID && blkno < endblk)
  {
   Buffer buf = ReadBuffer(rel, blkno);

   LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);






   if (!PageIsNew(BufferGetPage(buf)))
    bufpack[nbufs++] = buf;
   else
    UnlockReleaseBuffer(buf);
   blkno++;
  }


  XLogBeginInsert();

  START_CRIT_SECTION();
  for (i = 0; i < nbufs; i++)
  {
   XLogRegisterBuffer(i, bufpack[i], REGBUF_FORCE_IMAGE | REGBUF_STANDARD);
   MarkBufferDirty(bufpack[i]);
  }

  recptr = XLogInsert(RM_XLOG_ID, XLOG_FPI);

  for (i = 0; i < nbufs; i++)
  {
   PageSetLSN(BufferGetPage(bufpack[i]), recptr);
   UnlockReleaseBuffer(bufpack[i]);
  }
  END_CRIT_SECTION();
 }
}
