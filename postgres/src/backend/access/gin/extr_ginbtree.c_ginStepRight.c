
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rightlink; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int ERROR ;
 TYPE_1__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 scalar_t__ GinPageIsDeleted (int ) ;
 int GinPageIsLeaf (int ) ;
 int LockBuffer (int ,int) ;
 int ReadBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*) ;

Buffer
ginStepRight(Buffer buffer, Relation index, int lockmode)
{
 Buffer nextbuffer;
 Page page = BufferGetPage(buffer);
 bool isLeaf = GinPageIsLeaf(page);
 bool isData = GinPageIsData(page);
 BlockNumber blkno = GinPageGetOpaque(page)->rightlink;

 nextbuffer = ReadBuffer(index, blkno);
 LockBuffer(nextbuffer, lockmode);
 UnlockReleaseBuffer(buffer);


 page = BufferGetPage(nextbuffer);
 if (isLeaf != GinPageIsLeaf(page) || isData != GinPageIsData(page))
  elog(ERROR, "right sibling of GIN page is of different type");





 if (GinPageIsDeleted(page))
  elog(ERROR, "right sibling of GIN page was deleted");

 return nextbuffer;
}
