
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_tid; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef TYPE_1__* IndexTuple ;
typedef int Buffer ;
typedef int BlockNumber ;


 scalar_t__ BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 int GIST_ROOT_BLKNO ;
 int GIST_SHARE ;
 scalar_t__ GistPageIsLeaf (scalar_t__) ;
 int ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 int ReadBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;

__attribute__((used)) static int
gistGetMaxLevel(Relation index)
{
 int maxLevel;
 BlockNumber blkno;





 maxLevel = 0;
 blkno = GIST_ROOT_BLKNO;
 while (1)
 {
  Buffer buffer;
  Page page;
  IndexTuple itup;

  buffer = ReadBuffer(index, blkno);





  LockBuffer(buffer, GIST_SHARE);
  page = (Page) BufferGetPage(buffer);

  if (GistPageIsLeaf(page))
  {

   UnlockReleaseBuffer(buffer);
   break;
  }






  itup = (IndexTuple) PageGetItem(page,
          PageGetItemId(page, FirstOffsetNumber));
  blkno = ItemPointerGetBlockNumber(&(itup->t_tid));
  UnlockReleaseBuffer(buffer);





  maxLevel++;
 }
 return maxLevel;
}
