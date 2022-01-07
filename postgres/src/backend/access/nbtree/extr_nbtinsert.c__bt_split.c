
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ newitemoff; scalar_t__ firstright; int level; } ;
typedef TYPE_2__ xl_btree_split ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int level; } ;
struct TYPE_15__ {int btpo_flags; scalar_t__ btpo_prev; scalar_t__ btpo_cycleid; TYPE_1__ btpo; scalar_t__ btpo_next; } ;
struct TYPE_14__ {scalar_t__ heapkeyspace; } ;
struct TYPE_13__ {int pd_upper; int pd_special; } ;
typedef int Size ;
typedef int Relation ;
typedef TYPE_3__* PageHeader ;
typedef int * Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_4__* BTScanInsert ;
typedef TYPE_5__* BTPageOpaque ;


 int Assert (int) ;
 int BTP_HAS_GARBAGE ;
 int BTP_INCOMPLETE_SPLIT ;
 int BTP_ROOT ;
 int BTP_SPLIT_END ;
 int BT_WRITE ;
 int BTreeTupleGetNAtts (scalar_t__,int ) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int * BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int IndexRelationGetNumberOfAttributes (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int IndexTupleSize (scalar_t__) ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemIdGetLength (int ) ;
 int MAXALIGN (int) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ OffsetNumberPrev (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_5__*) ;
 scalar_t__ P_HIKEY ;
 int P_ISLEAF (TYPE_5__*) ;
 scalar_t__ P_NEW ;
 int P_RIGHTMOST (TYPE_5__*) ;
 scalar_t__ PageAddItem (int *,int ,int,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,scalar_t__) ;
 int PageGetLSN (int *) ;
 scalar_t__ PageGetMaxOffsetNumber (int *) ;
 scalar_t__ PageGetSpecialPointer (int *) ;
 int * PageGetTempPage (int *) ;
 int PageRestoreTempPage (int *,int *) ;
 int PageSetLSN (int *,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeSplit ;
 int XLOG_BTREE_SPLIT_L ;
 int XLOG_BTREE_SPLIT_R ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 scalar_t__ _bt_findsplitloc (int ,int *,scalar_t__,int,scalar_t__,int*) ;
 int _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_pageinit (int *,int ) ;
 int _bt_pgaddtup (int *,int,scalar_t__,scalar_t__) ;
 int _bt_relbuf (int ,int ) ;
 scalar_t__ _bt_truncate (int ,scalar_t__,scalar_t__,TYPE_4__*) ;
 scalar_t__ _bt_vacuum_cycleid (int ) ;
 int elog (int ,char*,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int memset (int *,int ,int ) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static Buffer
_bt_split(Relation rel, BTScanInsert itup_key, Buffer buf, Buffer cbuf,
    OffsetNumber newitemoff, Size newitemsz, IndexTuple newitem)
{
 Buffer rbuf;
 Page origpage;
 Page leftpage,
    rightpage;
 BlockNumber origpagenumber,
    rightpagenumber;
 BTPageOpaque ropaque,
    lopaque,
    oopaque;
 Buffer sbuf = InvalidBuffer;
 Page spage = ((void*)0);
 BTPageOpaque sopaque = ((void*)0);
 Size itemsz;
 ItemId itemid;
 IndexTuple item;
 OffsetNumber leftoff,
    rightoff;
 OffsetNumber firstright;
 OffsetNumber maxoff;
 OffsetNumber i;
 bool newitemonleft,
    isleaf;
 IndexTuple lefthikey;
 int indnatts = IndexRelationGetNumberOfAttributes(rel);
 int indnkeyatts = IndexRelationGetNumberOfKeyAttributes(rel);
 origpage = BufferGetPage(buf);
 oopaque = (BTPageOpaque) PageGetSpecialPointer(origpage);
 origpagenumber = BufferGetBlockNumber(buf);
 firstright = _bt_findsplitloc(rel, origpage, newitemoff, newitemsz,
          newitem, &newitemonleft);


 leftpage = PageGetTempPage(origpage);
 _bt_pageinit(leftpage, BufferGetPageSize(buf));
 lopaque = (BTPageOpaque) PageGetSpecialPointer(leftpage);





 lopaque->btpo_flags = oopaque->btpo_flags;
 lopaque->btpo_flags &= ~(BTP_ROOT | BTP_SPLIT_END | BTP_HAS_GARBAGE);

 lopaque->btpo_flags |= BTP_INCOMPLETE_SPLIT;
 lopaque->btpo_prev = oopaque->btpo_prev;

 lopaque->btpo.level = oopaque->btpo.level;







 PageSetLSN(leftpage, PageGetLSN(origpage));
 isleaf = P_ISLEAF(oopaque);
 if (!newitemonleft && newitemoff == firstright)
 {

  itemsz = newitemsz;
  item = newitem;
 }
 else
 {

  itemid = PageGetItemId(origpage, firstright);
  itemsz = ItemIdGetLength(itemid);
  item = (IndexTuple) PageGetItem(origpage, itemid);
 }
 if (isleaf && (itup_key->heapkeyspace || indnatts != indnkeyatts))
 {
  IndexTuple lastleft;






  if (newitemonleft && newitemoff == firstright)
  {

   lastleft = newitem;
  }
  else
  {
   OffsetNumber lastleftoff;


   lastleftoff = OffsetNumberPrev(firstright);
   Assert(lastleftoff >= P_FIRSTDATAKEY(oopaque));
   itemid = PageGetItemId(origpage, lastleftoff);
   lastleft = (IndexTuple) PageGetItem(origpage, itemid);
  }

  Assert(lastleft != item);
  lefthikey = _bt_truncate(rel, lastleft, item, itup_key);
  itemsz = IndexTupleSize(lefthikey);
  itemsz = MAXALIGN(itemsz);
 }
 else
  lefthikey = item;




 leftoff = P_HIKEY;

 Assert(BTreeTupleGetNAtts(lefthikey, rel) > 0);
 Assert(BTreeTupleGetNAtts(lefthikey, rel) <= indnkeyatts);
 if (PageAddItem(leftpage, (Item) lefthikey, itemsz, leftoff,
     0, 0) == InvalidOffsetNumber)
  elog(ERROR, "failed to add hikey to the left sibling"
    " while splitting block %u of index \"%s\"",
    origpagenumber, RelationGetRelationName(rel));
 leftoff = OffsetNumberNext(leftoff);

 if (lefthikey != item)
  pfree(lefthikey);
 rbuf = _bt_getbuf(rel, P_NEW, BT_WRITE);
 rightpage = BufferGetPage(rbuf);
 rightpagenumber = BufferGetBlockNumber(rbuf);

 ropaque = (BTPageOpaque) PageGetSpecialPointer(rightpage);






 lopaque->btpo_next = rightpagenumber;
 lopaque->btpo_cycleid = _bt_vacuum_cycleid(rel);





 ropaque->btpo_flags = oopaque->btpo_flags;
 ropaque->btpo_flags &= ~(BTP_ROOT | BTP_SPLIT_END | BTP_HAS_GARBAGE);
 ropaque->btpo_prev = origpagenumber;
 ropaque->btpo_next = oopaque->btpo_next;
 ropaque->btpo.level = oopaque->btpo.level;
 ropaque->btpo_cycleid = lopaque->btpo_cycleid;
 rightoff = P_HIKEY;

 if (!P_RIGHTMOST(oopaque))
 {
  itemid = PageGetItemId(origpage, P_HIKEY);
  itemsz = ItemIdGetLength(itemid);
  item = (IndexTuple) PageGetItem(origpage, itemid);
  Assert(BTreeTupleGetNAtts(item, rel) > 0);
  Assert(BTreeTupleGetNAtts(item, rel) <= indnkeyatts);
  if (PageAddItem(rightpage, (Item) item, itemsz, rightoff,
      0, 0) == InvalidOffsetNumber)
  {
   memset(rightpage, 0, BufferGetPageSize(rbuf));
   elog(ERROR, "failed to add hikey to the right sibling"
     " while splitting block %u of index \"%s\"",
     origpagenumber, RelationGetRelationName(rel));
  }
  rightoff = OffsetNumberNext(rightoff);
 }
 maxoff = PageGetMaxOffsetNumber(origpage);

 for (i = P_FIRSTDATAKEY(oopaque); i <= maxoff; i = OffsetNumberNext(i))
 {
  itemid = PageGetItemId(origpage, i);
  itemsz = ItemIdGetLength(itemid);
  item = (IndexTuple) PageGetItem(origpage, itemid);


  if (i == newitemoff)
  {
   if (newitemonleft)
   {
    Assert(newitemoff <= firstright);
    if (!_bt_pgaddtup(leftpage, newitemsz, newitem, leftoff))
    {
     memset(rightpage, 0, BufferGetPageSize(rbuf));
     elog(ERROR, "failed to add new item to the left sibling"
       " while splitting block %u of index \"%s\"",
       origpagenumber, RelationGetRelationName(rel));
    }
    leftoff = OffsetNumberNext(leftoff);
   }
   else
   {
    Assert(newitemoff >= firstright);
    if (!_bt_pgaddtup(rightpage, newitemsz, newitem, rightoff))
    {
     memset(rightpage, 0, BufferGetPageSize(rbuf));
     elog(ERROR, "failed to add new item to the right sibling"
       " while splitting block %u of index \"%s\"",
       origpagenumber, RelationGetRelationName(rel));
    }
    rightoff = OffsetNumberNext(rightoff);
   }
  }


  if (i < firstright)
  {
   if (!_bt_pgaddtup(leftpage, itemsz, item, leftoff))
   {
    memset(rightpage, 0, BufferGetPageSize(rbuf));
    elog(ERROR, "failed to add old item to the left sibling"
      " while splitting block %u of index \"%s\"",
      origpagenumber, RelationGetRelationName(rel));
   }
   leftoff = OffsetNumberNext(leftoff);
  }
  else
  {
   if (!_bt_pgaddtup(rightpage, itemsz, item, rightoff))
   {
    memset(rightpage, 0, BufferGetPageSize(rbuf));
    elog(ERROR, "failed to add old item to the right sibling"
      " while splitting block %u of index \"%s\"",
      origpagenumber, RelationGetRelationName(rel));
   }
   rightoff = OffsetNumberNext(rightoff);
  }
 }


 if (i <= newitemoff)
 {





  Assert(!newitemonleft);
  if (!_bt_pgaddtup(rightpage, newitemsz, newitem, rightoff))
  {
   memset(rightpage, 0, BufferGetPageSize(rbuf));
   elog(ERROR, "failed to add new item to the right sibling"
     " while splitting block %u of index \"%s\"",
     origpagenumber, RelationGetRelationName(rel));
  }
  rightoff = OffsetNumberNext(rightoff);
 }
 if (!P_RIGHTMOST(oopaque))
 {
  sbuf = _bt_getbuf(rel, oopaque->btpo_next, BT_WRITE);
  spage = BufferGetPage(sbuf);
  sopaque = (BTPageOpaque) PageGetSpecialPointer(spage);
  if (sopaque->btpo_prev != origpagenumber)
  {
   memset(rightpage, 0, BufferGetPageSize(rbuf));
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("right sibling's left-link doesn't match: "
          "block %u links to %u instead of expected %u in index \"%s\"",
          oopaque->btpo_next, sopaque->btpo_prev, origpagenumber,
          RelationGetRelationName(rel))));
  }
  if (sopaque->btpo_cycleid != ropaque->btpo_cycleid)
   ropaque->btpo_flags |= BTP_SPLIT_END;
 }
 START_CRIT_SECTION();
 PageRestoreTempPage(leftpage, origpage);


 MarkBufferDirty(buf);
 MarkBufferDirty(rbuf);

 if (!P_RIGHTMOST(ropaque))
 {
  sopaque->btpo_prev = rightpagenumber;
  MarkBufferDirty(sbuf);
 }





 if (!isleaf)
 {
  Page cpage = BufferGetPage(cbuf);
  BTPageOpaque cpageop = (BTPageOpaque) PageGetSpecialPointer(cpage);

  cpageop->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;
  MarkBufferDirty(cbuf);
 }


 if (RelationNeedsWAL(rel))
 {
  xl_btree_split xlrec;
  uint8 xlinfo;
  XLogRecPtr recptr;

  xlrec.level = ropaque->btpo.level;
  xlrec.firstright = firstright;
  xlrec.newitemoff = newitemoff;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBtreeSplit);

  XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
  XLogRegisterBuffer(1, rbuf, REGBUF_WILL_INIT);

  if (!P_RIGHTMOST(ropaque))
   XLogRegisterBuffer(2, sbuf, REGBUF_STANDARD);
  if (BufferIsValid(cbuf))
   XLogRegisterBuffer(3, cbuf, REGBUF_STANDARD);
  if (newitemonleft)
   XLogRegisterBufData(0, (char *) newitem, MAXALIGN(newitemsz));


  itemid = PageGetItemId(origpage, P_HIKEY);
  item = (IndexTuple) PageGetItem(origpage, itemid);
  XLogRegisterBufData(0, (char *) item, MAXALIGN(IndexTupleSize(item)));
  XLogRegisterBufData(1,
       (char *) rightpage + ((PageHeader) rightpage)->pd_upper,
       ((PageHeader) rightpage)->pd_special - ((PageHeader) rightpage)->pd_upper);

  xlinfo = newitemonleft ? XLOG_BTREE_SPLIT_L : XLOG_BTREE_SPLIT_R;
  recptr = XLogInsert(RM_BTREE_ID, xlinfo);

  PageSetLSN(origpage, recptr);
  PageSetLSN(rightpage, recptr);
  if (!P_RIGHTMOST(ropaque))
  {
   PageSetLSN(spage, recptr);
  }
  if (!isleaf)
  {
   PageSetLSN(BufferGetPage(cbuf), recptr);
  }
 }

 END_CRIT_SECTION();


 if (!P_RIGHTMOST(ropaque))
  _bt_relbuf(rel, sbuf);


 if (!isleaf)
  _bt_relbuf(rel, cbuf);


 return rbuf;
}
