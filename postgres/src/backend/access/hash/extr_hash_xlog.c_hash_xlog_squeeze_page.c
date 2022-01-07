
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ntups; void* prevblkno; void* nextblkno; scalar_t__ is_prev_bucket_same_wrt; scalar_t__ is_prim_bucket_same_wrt; } ;
typedef TYPE_1__ xl_hash_squeeze_page ;
typedef int uint32 ;
typedef size_t uint16 ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_13__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_15__ {int hashm_firstfree; } ;
struct TYPE_14__ {int hasho_bucket; void* hasho_prevblkno; void* hasho_nextblkno; int hasho_page_id; int hasho_flag; } ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_3__* HashPageOpaque ;
typedef TYPE_4__* HashMetaPage ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CLRBIT (int *,int ) ;
 int ERROR ;
 int HASHO_PAGE_ID ;
 int * HashPageGetBitmap (scalar_t__) ;
 TYPE_4__* HashPageGetMeta (scalar_t__) ;
 int IndexTupleSize (scalar_t__) ;
 void* InvalidBlockNumber ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int LH_UNUSED_PAGE ;
 int MAXALIGN (int) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,scalar_t__,int,int) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int,int ,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecHasBlockRef (TYPE_2__*,int) ;
 int _hash_pageinit (scalar_t__,int ) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
hash_xlog_squeeze_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_squeeze_page *xldata = (xl_hash_squeeze_page *) XLogRecGetData(record);
 Buffer bucketbuf = InvalidBuffer;
 Buffer writebuf;
 Buffer ovflbuf;
 Buffer prevbuf = InvalidBuffer;
 Buffer mapbuf;
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
     elog(ERROR, "hash_xlog_squeeze_page: failed to add item to hash index page, size %d bytes",
       (int) itemsz);

    ninserted++;
   }
  }




  Assert(ninserted == xldata->ntups);





  if (xldata->is_prev_bucket_same_wrt)
  {
   HashPageOpaque writeopaque = (HashPageOpaque) PageGetSpecialPointer(writepage);

   writeopaque->hasho_nextblkno = xldata->nextblkno;
  }

  PageSetLSN(writepage, lsn);
  MarkBufferDirty(writebuf);
 }


 if (XLogReadBufferForRedo(record, 2, &ovflbuf) == BLK_NEEDS_REDO)
 {
  Page ovflpage;
  HashPageOpaque ovflopaque;

  ovflpage = BufferGetPage(ovflbuf);

  _hash_pageinit(ovflpage, BufferGetPageSize(ovflbuf));

  ovflopaque = (HashPageOpaque) PageGetSpecialPointer(ovflpage);

  ovflopaque->hasho_prevblkno = InvalidBlockNumber;
  ovflopaque->hasho_nextblkno = InvalidBlockNumber;
  ovflopaque->hasho_bucket = -1;
  ovflopaque->hasho_flag = LH_UNUSED_PAGE;
  ovflopaque->hasho_page_id = HASHO_PAGE_ID;

  PageSetLSN(ovflpage, lsn);
  MarkBufferDirty(ovflbuf);
 }
 if (BufferIsValid(ovflbuf))
  UnlockReleaseBuffer(ovflbuf);


 if (!xldata->is_prev_bucket_same_wrt &&
  XLogReadBufferForRedo(record, 3, &prevbuf) == BLK_NEEDS_REDO)
 {
  Page prevpage = BufferGetPage(prevbuf);
  HashPageOpaque prevopaque = (HashPageOpaque) PageGetSpecialPointer(prevpage);

  prevopaque->hasho_nextblkno = xldata->nextblkno;

  PageSetLSN(prevpage, lsn);
  MarkBufferDirty(prevbuf);
 }
 if (BufferIsValid(prevbuf))
  UnlockReleaseBuffer(prevbuf);


 if (XLogRecHasBlockRef(record, 4))
 {
  Buffer nextbuf;

  if (XLogReadBufferForRedo(record, 4, &nextbuf) == BLK_NEEDS_REDO)
  {
   Page nextpage = BufferGetPage(nextbuf);
   HashPageOpaque nextopaque = (HashPageOpaque) PageGetSpecialPointer(nextpage);

   nextopaque->hasho_prevblkno = xldata->prevblkno;

   PageSetLSN(nextpage, lsn);
   MarkBufferDirty(nextbuf);
  }
  if (BufferIsValid(nextbuf))
   UnlockReleaseBuffer(nextbuf);
 }

 if (BufferIsValid(writebuf))
  UnlockReleaseBuffer(writebuf);

 if (BufferIsValid(bucketbuf))
  UnlockReleaseBuffer(bucketbuf);
 if (XLogReadBufferForRedo(record, 5, &mapbuf) == BLK_NEEDS_REDO)
 {
  Page mappage = (Page) BufferGetPage(mapbuf);
  uint32 *freep = ((void*)0);
  char *data;
  uint32 *bitmap_page_bit;
  Size datalen;

  freep = HashPageGetBitmap(mappage);

  data = XLogRecGetBlockData(record, 5, &datalen);
  bitmap_page_bit = (uint32 *) data;

  CLRBIT(freep, *bitmap_page_bit);

  PageSetLSN(mappage, lsn);
  MarkBufferDirty(mapbuf);
 }
 if (BufferIsValid(mapbuf))
  UnlockReleaseBuffer(mapbuf);


 if (XLogRecHasBlockRef(record, 6))
 {
  Buffer metabuf;

  if (XLogReadBufferForRedo(record, 6, &metabuf) == BLK_NEEDS_REDO)
  {
   HashMetaPage metap;
   Page page;
   char *data;
   uint32 *firstfree_ovflpage;
   Size datalen;

   data = XLogRecGetBlockData(record, 6, &datalen);
   firstfree_ovflpage = (uint32 *) data;

   page = BufferGetPage(metabuf);
   metap = HashPageGetMeta(page);
   metap->hashm_firstfree = *firstfree_ovflpage;

   PageSetLSN(page, lsn);
   MarkBufferDirty(metabuf);
  }
  if (BufferIsValid(metabuf))
   UnlockReleaseBuffer(metabuf);
 }
}
