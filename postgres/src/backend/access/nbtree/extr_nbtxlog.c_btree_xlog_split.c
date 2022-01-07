
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ level; scalar_t__ firstright; scalar_t__ newitemoff; } ;
typedef TYPE_2__ xl_btree_split ;
typedef int XLogRecPtr ;
struct TYPE_15__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
struct TYPE_13__ {scalar_t__ level; } ;
struct TYPE_16__ {scalar_t__ btpo_prev; scalar_t__ btpo_cycleid; scalar_t__ btpo_next; int btpo_flags; TYPE_1__ btpo; } ;
typedef scalar_t__ Size ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef int * IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_4__* BTPageOpaque ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_INCOMPLETE_SPLIT ;
 int BTP_LEAF ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 int IndexTupleSize (int *) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemIdGetLength (int ) ;
 scalar_t__ MAXALIGN (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PANIC ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_4__*) ;
 scalar_t__ P_HIKEY ;
 scalar_t__ P_NONE ;
 scalar_t__ PageAddItem (scalar_t__,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 scalar_t__ PageGetTempPageCopySpecial (scalar_t__) ;
 int PageRestoreTempPage (scalar_t__,scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_3__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_3__*,int,int *) ;
 char* XLogRecGetBlockData (TYPE_3__*,int,scalar_t__*) ;
 int XLogRecGetBlockTag (TYPE_3__*,int,int *,int *,scalar_t__*) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 int _bt_clear_incomplete_split (TYPE_3__*,int) ;
 int _bt_pageinit (scalar_t__,int ) ;
 int _bt_restore_page (scalar_t__,char*,scalar_t__) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
btree_xlog_split(bool onleft, XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_split *xlrec = (xl_btree_split *) XLogRecGetData(record);
 bool isleaf = (xlrec->level == 0);
 Buffer lbuf;
 Buffer rbuf;
 Page rpage;
 BTPageOpaque ropaque;
 char *datapos;
 Size datalen;
 BlockNumber leftsib;
 BlockNumber rightsib;
 BlockNumber rnext;

 XLogRecGetBlockTag(record, 0, ((void*)0), ((void*)0), &leftsib);
 XLogRecGetBlockTag(record, 1, ((void*)0), ((void*)0), &rightsib);
 if (!XLogRecGetBlockTag(record, 2, ((void*)0), ((void*)0), &rnext))
  rnext = P_NONE;






 if (!isleaf)
  _bt_clear_incomplete_split(record, 3);


 rbuf = XLogInitBufferForRedo(record, 1);
 datapos = XLogRecGetBlockData(record, 1, &datalen);
 rpage = (Page) BufferGetPage(rbuf);

 _bt_pageinit(rpage, BufferGetPageSize(rbuf));
 ropaque = (BTPageOpaque) PageGetSpecialPointer(rpage);

 ropaque->btpo_prev = leftsib;
 ropaque->btpo_next = rnext;
 ropaque->btpo.level = xlrec->level;
 ropaque->btpo_flags = isleaf ? BTP_LEAF : 0;
 ropaque->btpo_cycleid = 0;

 _bt_restore_page(rpage, datapos, datalen);

 PageSetLSN(rpage, lsn);
 MarkBufferDirty(rbuf);


 if (XLogReadBufferForRedo(record, 0, &lbuf) == BLK_NEEDS_REDO)
 {
  Page lpage = (Page) BufferGetPage(lbuf);
  BTPageOpaque lopaque = (BTPageOpaque) PageGetSpecialPointer(lpage);
  OffsetNumber off;
  IndexTuple newitem = ((void*)0),
     left_hikey = ((void*)0);
  Size newitemsz = 0,
     left_hikeysz = 0;
  Page newlpage;
  OffsetNumber leftoff;

  datapos = XLogRecGetBlockData(record, 0, &datalen);

  if (onleft)
  {
   newitem = (IndexTuple) datapos;
   newitemsz = MAXALIGN(IndexTupleSize(newitem));
   datapos += newitemsz;
   datalen -= newitemsz;
  }


  left_hikey = (IndexTuple) datapos;
  left_hikeysz = MAXALIGN(IndexTupleSize(left_hikey));
  datapos += left_hikeysz;
  datalen -= left_hikeysz;

  Assert(datalen == 0);

  newlpage = PageGetTempPageCopySpecial(lpage);


  leftoff = P_HIKEY;
  if (PageAddItem(newlpage, (Item) left_hikey, left_hikeysz,
      P_HIKEY, 0, 0) == InvalidOffsetNumber)
   elog(PANIC, "failed to add high key to left page after split");
  leftoff = OffsetNumberNext(leftoff);

  for (off = P_FIRSTDATAKEY(lopaque); off < xlrec->firstright; off++)
  {
   ItemId itemid;
   Size itemsz;
   IndexTuple item;


   if (onleft && off == xlrec->newitemoff)
   {
    if (PageAddItem(newlpage, (Item) newitem, newitemsz, leftoff,
        0, 0) == InvalidOffsetNumber)
     elog(ERROR, "failed to add new item to left page after split");
    leftoff = OffsetNumberNext(leftoff);
   }

   itemid = PageGetItemId(lpage, off);
   itemsz = ItemIdGetLength(itemid);
   item = (IndexTuple) PageGetItem(lpage, itemid);
   if (PageAddItem(newlpage, (Item) item, itemsz, leftoff,
       0, 0) == InvalidOffsetNumber)
    elog(ERROR, "failed to add old item to left page after split");
   leftoff = OffsetNumberNext(leftoff);
  }


  if (onleft && off == xlrec->newitemoff)
  {
   if (PageAddItem(newlpage, (Item) newitem, newitemsz, leftoff,
       0, 0) == InvalidOffsetNumber)
    elog(ERROR, "failed to add new item to left page after split");
   leftoff = OffsetNumberNext(leftoff);
  }

  PageRestoreTempPage(newlpage, lpage);


  lopaque->btpo_flags = BTP_INCOMPLETE_SPLIT;
  if (isleaf)
   lopaque->btpo_flags |= BTP_LEAF;
  lopaque->btpo_next = rightsib;
  lopaque->btpo_cycleid = 0;

  PageSetLSN(lpage, lsn);
  MarkBufferDirty(lbuf);
 }





 if (BufferIsValid(lbuf))
  UnlockReleaseBuffer(lbuf);
 UnlockReleaseBuffer(rbuf);
 if (rnext != P_NONE)
 {
  Buffer buffer;

  if (XLogReadBufferForRedo(record, 2, &buffer) == BLK_NEEDS_REDO)
  {
   Page page = (Page) BufferGetPage(buffer);
   BTPageOpaque pageop = (BTPageOpaque) PageGetSpecialPointer(page);

   pageop->btpo_prev = rightsib;

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }
}
