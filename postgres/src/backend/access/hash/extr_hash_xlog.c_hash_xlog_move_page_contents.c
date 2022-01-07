
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ntups; scalar_t__ is_prim_bucket_same_wrt; } ;
typedef TYPE_1__ xl_hash_move_page_contents ;
typedef size_t uint16 ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
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
 int IndexTupleSize (scalar_t__) ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int MAXALIGN (int) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,scalar_t__,int,int) ;
 int PageIndexMultiDelete (scalar_t__,scalar_t__*,int) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int,int ,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
hash_xlog_move_page_contents(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_move_page_contents *xldata = (xl_hash_move_page_contents *) XLogRecGetData(record);
 Buffer bucketbuf = InvalidBuffer;
 Buffer writebuf = InvalidBuffer;
 Buffer deletebuf = InvalidBuffer;
 XLogRedoAction action;
 if (xldata->is_prim_bucket_same_wrt)
  action = XLogReadBufferForRedoExtended(record, 1, RBM_NORMAL, 1, &writebuf);
 else
 {




  (void) XLogReadBufferForRedoExtended(record, 0, RBM_NORMAL, 1, &bucketbuf);

  action = XLogReadBufferForRedo(record, 1, &writebuf);
 }


 if (action == BLK_NEEDS_REDO)
 {
  Page writepage;
  char *begin;
  char *data;
  Size datalen;
  uint16 ninserted = 0;

  data = begin = XLogRecGetBlockData(record, 1, &datalen);

  writepage = (Page) BufferGetPage(writebuf);

  if (xldata->ntups > 0)
  {
   OffsetNumber *towrite = (OffsetNumber *) data;

   data += sizeof(OffsetNumber) * xldata->ntups;

   while (data - begin < datalen)
   {
    IndexTuple itup = (IndexTuple) data;
    Size itemsz;
    OffsetNumber l;

    itemsz = IndexTupleSize(itup);
    itemsz = MAXALIGN(itemsz);

    data += itemsz;

    l = PageAddItem(writepage, (Item) itup, itemsz, towrite[ninserted], 0, 0);
    if (l == InvalidOffsetNumber)
     elog(ERROR, "hash_xlog_move_page_contents: failed to add item to hash index page, size %d bytes",
       (int) itemsz);

    ninserted++;
   }
  }




  Assert(ninserted == xldata->ntups);

  PageSetLSN(writepage, lsn);
  MarkBufferDirty(writebuf);
 }


 if (XLogReadBufferForRedo(record, 2, &deletebuf) == BLK_NEEDS_REDO)
 {
  Page page;
  char *ptr;
  Size len;

  ptr = XLogRecGetBlockData(record, 2, &len);

  page = (Page) BufferGetPage(deletebuf);

  if (len > 0)
  {
   OffsetNumber *unused;
   OffsetNumber *unend;

   unused = (OffsetNumber *) ptr;
   unend = (OffsetNumber *) ((char *) ptr + len);

   if ((unend - unused) > 0)
    PageIndexMultiDelete(page, unused, unend - unused);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(deletebuf);
 }
 if (BufferIsValid(deletebuf))
  UnlockReleaseBuffer(deletebuf);

 if (BufferIsValid(writebuf))
  UnlockReleaseBuffer(writebuf);

 if (BufferIsValid(bucketbuf))
  UnlockReleaseBuffer(bucketbuf);
}
