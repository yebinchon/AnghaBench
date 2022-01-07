
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int npage; scalar_t__ markfollowright; int orignsn; scalar_t__ origrlink; scalar_t__ origleaf; } ;
typedef TYPE_1__ gistxlogPageSplit ;
typedef int XLogRecPtr ;
struct TYPE_13__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef int IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetPage (int ) ;
 int F_LEAF ;
 int FirstOffsetNumber ;
 int GISTInitBuffer (int ,int) ;
 scalar_t__ GIST_ROOT_BLKNO ;
 int GistClearFollowRight (scalar_t__) ;
 int GistMarkFollowRight (scalar_t__) ;
 TYPE_10__* GistPageGetOpaque (scalar_t__) ;
 int GistPageSetNSN (scalar_t__,int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 char* XLogRecGetBlockData (TYPE_2__*,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,scalar_t__*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecHasBlockRef (TYPE_2__*,int ) ;
 int * decodePageSplitRecord (char*,int ,int*) ;
 int gistRedoClearFollowRight (TYPE_2__*,int ) ;
 int gistfillbuffer (scalar_t__,int *,int,int ) ;

__attribute__((used)) static void
gistRedoPageSplitRecord(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 gistxlogPageSplit *xldata = (gistxlogPageSplit *) XLogRecGetData(record);
 Buffer firstbuffer = InvalidBuffer;
 Buffer buffer;
 Page page;
 int i;
 bool isrootsplit = 0;
 for (i = 0; i < xldata->npage; i++)
 {
  int flags;
  char *data;
  Size datalen;
  int num;
  BlockNumber blkno;
  IndexTuple *tuples;

  XLogRecGetBlockTag(record, i + 1, ((void*)0), ((void*)0), &blkno);
  if (blkno == GIST_ROOT_BLKNO)
  {
   Assert(i == 0);
   isrootsplit = 1;
  }

  buffer = XLogInitBufferForRedo(record, i + 1);
  page = (Page) BufferGetPage(buffer);
  data = XLogRecGetBlockData(record, i + 1, &datalen);

  tuples = decodePageSplitRecord(data, datalen, &num);


  if (xldata->origleaf && blkno != GIST_ROOT_BLKNO)
   flags = F_LEAF;
  else
   flags = 0;
  GISTInitBuffer(buffer, flags);


  gistfillbuffer(page, tuples, num, FirstOffsetNumber);

  if (blkno == GIST_ROOT_BLKNO)
  {
   GistPageGetOpaque(page)->rightlink = InvalidBlockNumber;
   GistPageSetNSN(page, xldata->orignsn);
   GistClearFollowRight(page);
  }
  else
  {
   if (i < xldata->npage - 1)
   {
    BlockNumber nextblkno;

    XLogRecGetBlockTag(record, i + 2, ((void*)0), ((void*)0), &nextblkno);
    GistPageGetOpaque(page)->rightlink = nextblkno;
   }
   else
    GistPageGetOpaque(page)->rightlink = xldata->origrlink;
   GistPageSetNSN(page, xldata->orignsn);
   if (i < xldata->npage - 1 && !isrootsplit &&
    xldata->markfollowright)
    GistMarkFollowRight(page);
   else
    GistClearFollowRight(page);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);

  if (i == 0)
   firstbuffer = buffer;
  else
   UnlockReleaseBuffer(buffer);
 }


 if (XLogRecHasBlockRef(record, 0))
  gistRedoClearFollowRight(record, 0);


 UnlockReleaseBuffer(firstbuffer);
}
