
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ntuples; scalar_t__ prevTail; int newRightlink; int metadata; } ;
typedef TYPE_1__ ginxlogUpdateMeta ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int rightlink; int maxoff; } ;
typedef int Size ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int GinMetaPageData ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 int FirstOffsetNumber ;
 scalar_t__ GIN_METAPAGE_BLKNO ;
 int GinInitMetabuffer (int ) ;
 int GinPageGetMeta (int ) ;
 TYPE_8__* GinPageGetOpaque (int ) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int OffsetNumberNext (int ) ;
 scalar_t__ PageAddItem (int ,int ,int,int ,int,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
ginRedoUpdateMetapage(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogUpdateMeta *data = (ginxlogUpdateMeta *) XLogRecGetData(record);
 Buffer metabuffer;
 Page metapage;
 Buffer buffer;






 metabuffer = XLogInitBufferForRedo(record, 0);
 Assert(BufferGetBlockNumber(metabuffer) == GIN_METAPAGE_BLKNO);
 metapage = BufferGetPage(metabuffer);

 GinInitMetabuffer(metabuffer);
 memcpy(GinPageGetMeta(metapage), &data->metadata, sizeof(GinMetaPageData));
 PageSetLSN(metapage, lsn);
 MarkBufferDirty(metabuffer);

 if (data->ntuples > 0)
 {



  if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
  {
   Page page = BufferGetPage(buffer);
   OffsetNumber off;
   int i;
   Size tupsize;
   char *payload;
   IndexTuple tuples;
   Size totaltupsize;

   payload = XLogRecGetBlockData(record, 1, &totaltupsize);
   tuples = (IndexTuple) payload;

   if (PageIsEmpty(page))
    off = FirstOffsetNumber;
   else
    off = OffsetNumberNext(PageGetMaxOffsetNumber(page));

   for (i = 0; i < data->ntuples; i++)
   {
    tupsize = IndexTupleSize(tuples);

    if (PageAddItem(page, (Item) tuples, tupsize, off,
        0, 0) == InvalidOffsetNumber)
     elog(ERROR, "failed to add item to index page");

    tuples = (IndexTuple) (((char *) tuples) + tupsize);

    off++;
   }
   Assert(payload + totaltupsize == (char *) tuples);




   GinPageGetOpaque(page)->maxoff++;

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }
 else if (data->prevTail != InvalidBlockNumber)
 {



  if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
  {
   Page page = BufferGetPage(buffer);

   GinPageGetOpaque(page)->rightlink = data->newRightlink;

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }

 UnlockReleaseBuffer(metabuffer);
}
