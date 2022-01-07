
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ntodelete; int ntoinsert; } ;
typedef TYPE_1__ gistxlogPageUpdate ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GistMarkTuplesDeleted (scalar_t__) ;
 scalar_t__ GistPageIsLeaf (scalar_t__) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ OffsetNumberNext (int ) ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,scalar_t__,int,int) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,scalar_t__*,int) ;
 int PageIndexTupleOverwrite (scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ PageIsEmpty (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecHasBlockRef (TYPE_2__*,int) ;
 int elog (int ,char*,int) ;
 int gistRedoClearFollowRight (TYPE_2__*,int) ;

__attribute__((used)) static void
gistRedoPageUpdateRecord(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 gistxlogPageUpdate *xldata = (gistxlogPageUpdate *) XLogRecGetData(record);
 Buffer buffer;
 Page page;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  char *begin;
  char *data;
  Size datalen;
  int ninserted = 0;

  data = begin = XLogRecGetBlockData(record, 0, &datalen);

  page = (Page) BufferGetPage(buffer);

  if (xldata->ntodelete == 1 && xldata->ntoinsert == 1)
  {




   OffsetNumber offnum = *((OffsetNumber *) data);
   IndexTuple itup;
   Size itupsize;

   data += sizeof(OffsetNumber);
   itup = (IndexTuple) data;
   itupsize = IndexTupleSize(itup);
   if (!PageIndexTupleOverwrite(page, offnum, (Item) itup, itupsize))
    elog(ERROR, "failed to add item to GiST index page, size %d bytes",
      (int) itupsize);
   data += itupsize;

   Assert(data - begin == datalen);

   ninserted++;
  }
  else if (xldata->ntodelete > 0)
  {

   OffsetNumber *todelete = (OffsetNumber *) data;

   data += sizeof(OffsetNumber) * xldata->ntodelete;

   PageIndexMultiDelete(page, todelete, xldata->ntodelete);
   if (GistPageIsLeaf(page))
    GistMarkTuplesDeleted(page);
  }


  if (data - begin < datalen)
  {
   OffsetNumber off = (PageIsEmpty(page)) ? FirstOffsetNumber :
   OffsetNumberNext(PageGetMaxOffsetNumber(page));

   while (data - begin < datalen)
   {
    IndexTuple itup = (IndexTuple) data;
    Size sz = IndexTupleSize(itup);
    OffsetNumber l;

    data += sz;

    l = PageAddItem(page, (Item) itup, sz, off, 0, 0);
    if (l == InvalidOffsetNumber)
     elog(ERROR, "failed to add item to GiST index page, size %d bytes",
       (int) sz);
    off++;
    ninserted++;
   }
  }


  Assert(ninserted == xldata->ntoinsert);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (XLogRecHasBlockRef(record, 1))
  gistRedoClearFollowRight(record, 1);

 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
