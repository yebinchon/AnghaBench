
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ rightblk; int leftblk; scalar_t__ topparent; scalar_t__ leafblk; int poffset; } ;
typedef TYPE_1__ xl_btree_mark_page_halfdead ;
typedef int XLogRecPtr ;
struct TYPE_15__ {scalar_t__ btpo_next; int btpo_prev; int btpo_flags; } ;
struct TYPE_14__ {int t_info; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef TYPE_2__ IndexTupleData ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef int BTStack ;
typedef TYPE_3__* BTPageOpaque ;


 int Assert (int) ;
 int BTP_HALF_DEAD ;
 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 int BTreeInnerTupleSetDownLink (scalar_t__,scalar_t__) ;
 int BTreeTupleSetTopParent (TYPE_2__*,scalar_t__) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int DEBUG1 ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int IndexTupleSize (TYPE_2__*) ;
 scalar_t__ InvalidBlockNumber ;
 int MarkBufferDirty (int ) ;
 int MemSet (TYPE_2__*,int ,int) ;
 int OffsetNumberNext (int ) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_3__*) ;
 scalar_t__ P_HIKEY ;
 int P_ISDELETED (TYPE_3__*) ;
 int P_ISHALFDEAD (TYPE_3__*) ;
 scalar_t__ P_ISLEAF (TYPE_3__*) ;
 int P_ISROOT (TYPE_3__*) ;
 int P_RIGHTMOST (TYPE_3__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIndexTupleDelete (int ,int ) ;
 int PageIndexTupleOverwrite (int ,scalar_t__,int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int PredicateLockPageCombine (int ,scalar_t__,scalar_t__) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeMarkPageHalfDead ;
 int XLOG_BTREE_MARK_PAGE_HALFDEAD ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 scalar_t__ _bt_is_page_halfdead (int ,scalar_t__) ;
 int _bt_lock_branch_parent (int ,scalar_t__,int ,int *,int *,scalar_t__*,scalar_t__*) ;
 int _bt_relbuf (int ,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static bool
_bt_mark_page_halfdead(Relation rel, Buffer leafbuf, BTStack stack)
{
 BlockNumber leafblkno;
 BlockNumber leafrightsib;
 BlockNumber target;
 BlockNumber rightsib;
 ItemId itemid;
 Page page;
 BTPageOpaque opaque;
 Buffer topparent;
 OffsetNumber topoff;
 OffsetNumber nextoffset;
 IndexTuple itup;
 IndexTupleData trunctuple;

 page = BufferGetPage(leafbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 Assert(!P_RIGHTMOST(opaque) && !P_ISROOT(opaque) && !P_ISDELETED(opaque) &&
     !P_ISHALFDEAD(opaque) && P_ISLEAF(opaque) &&
     P_FIRSTDATAKEY(opaque) > PageGetMaxOffsetNumber(page));




 leafblkno = BufferGetBlockNumber(leafbuf);
 leafrightsib = opaque->btpo_next;
 if (_bt_is_page_halfdead(rel, leafrightsib))
 {
  elog(DEBUG1, "could not delete page %u because its right sibling %u is half-dead",
    leafblkno, leafrightsib);
  return 0;
 }
 rightsib = leafrightsib;
 target = leafblkno;
 if (!_bt_lock_branch_parent(rel, leafblkno, stack,
        &topparent, &topoff, &target, &rightsib))
  return 0;
 page = BufferGetPage(topparent);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);







 nextoffset = OffsetNumberNext(topoff);
 itemid = PageGetItemId(page, nextoffset);
 itup = (IndexTuple) PageGetItem(page, itemid);
 if (BTreeInnerTupleGetDownLink(itup) != rightsib)
  ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("right sibling %u of block %u is not next child %u of block %u in index \"%s\"",
          rightsib, target, BTreeInnerTupleGetDownLink(itup),
      BufferGetBlockNumber(topparent), RelationGetRelationName(rel))));





 PredicateLockPageCombine(rel, leafblkno, leafrightsib);


 START_CRIT_SECTION();







 page = BufferGetPage(topparent);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 itemid = PageGetItemId(page, topoff);
 itup = (IndexTuple) PageGetItem(page, itemid);
 BTreeInnerTupleSetDownLink(itup, rightsib);

 nextoffset = OffsetNumberNext(topoff);
 PageIndexTupleDelete(page, nextoffset);






 page = BufferGetPage(leafbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 opaque->btpo_flags |= BTP_HALF_DEAD;

 Assert(PageGetMaxOffsetNumber(page) == P_HIKEY);
 MemSet(&trunctuple, 0, sizeof(IndexTupleData));
 trunctuple.t_info = sizeof(IndexTupleData);
 if (target != leafblkno)
  BTreeTupleSetTopParent(&trunctuple, target);
 else
  BTreeTupleSetTopParent(&trunctuple, InvalidBlockNumber);

 if (!PageIndexTupleOverwrite(page, P_HIKEY, (Item) &trunctuple,
         IndexTupleSize(&trunctuple)))
  elog(ERROR, "could not overwrite high key in half-dead page");


 MarkBufferDirty(topparent);
 MarkBufferDirty(leafbuf);


 if (RelationNeedsWAL(rel))
 {
  xl_btree_mark_page_halfdead xlrec;
  XLogRecPtr recptr;

  xlrec.poffset = topoff;
  xlrec.leafblk = leafblkno;
  if (target != leafblkno)
   xlrec.topparent = target;
  else
   xlrec.topparent = InvalidBlockNumber;

  XLogBeginInsert();
  XLogRegisterBuffer(0, leafbuf, REGBUF_WILL_INIT);
  XLogRegisterBuffer(1, topparent, REGBUF_STANDARD);

  page = BufferGetPage(leafbuf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  xlrec.leftblk = opaque->btpo_prev;
  xlrec.rightblk = opaque->btpo_next;

  XLogRegisterData((char *) &xlrec, SizeOfBtreeMarkPageHalfDead);

  recptr = XLogInsert(RM_BTREE_ID, XLOG_BTREE_MARK_PAGE_HALFDEAD);

  page = BufferGetPage(topparent);
  PageSetLSN(page, recptr);
  page = BufferGetPage(leafbuf);
  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 _bt_relbuf(rel, topparent);
 return 1;
}
