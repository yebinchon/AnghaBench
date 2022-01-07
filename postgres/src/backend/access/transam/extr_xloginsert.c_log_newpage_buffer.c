
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int RelFileNode ;
typedef int Page ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int BufferGetTag (int ,int *,int *,int *) ;
 scalar_t__ CritSectionCount ;
 int log_newpage (int *,int ,int ,int ,int) ;

XLogRecPtr
log_newpage_buffer(Buffer buffer, bool page_std)
{
 Page page = BufferGetPage(buffer);
 RelFileNode rnode;
 ForkNumber forkNum;
 BlockNumber blkno;


 Assert(CritSectionCount > 0);

 BufferGetTag(buffer, &rnode, &forkNum, &blkno);

 return log_newpage(&rnode, forkNum, blkno, page, page_std);
}
