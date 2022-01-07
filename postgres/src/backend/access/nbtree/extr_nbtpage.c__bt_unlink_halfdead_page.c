
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ topparent; scalar_t__ leafrightsib; scalar_t__ leafleftsib; int btpo_xact; scalar_t__ rightsib; scalar_t__ leftsib; } ;
typedef TYPE_2__ xl_btree_unlink_page ;
struct TYPE_15__ {scalar_t__ version; int fastlevel; int last_cleanup_num_heap_tuples; int oldest_btpo_xact; scalar_t__ fastroot; int level; int root; } ;
typedef TYPE_3__ xl_btree_metadata ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_17__ {int btm_fastlevel; scalar_t__ btm_version; int btm_last_cleanup_num_heap_tuples; int btm_oldest_btpo_xact; scalar_t__ btm_fastroot; int btm_level; int btm_root; } ;
struct TYPE_13__ {int level; int xact; } ;
struct TYPE_16__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; TYPE_1__ btpo; int btpo_flags; } ;
typedef int Relation ;
typedef int * Page ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_4__* BTPageOpaque ;
typedef TYPE_5__ BTMetaPageData ;


 int Assert (int) ;
 int BTP_DELETED ;
 int BTP_HALF_DEAD ;
 TYPE_5__* BTPageGetMeta (int *) ;
 scalar_t__ BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 int BT_READ ;
 int BT_WRITE ;
 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 scalar_t__ BTreeTupleGetTopParent (scalar_t__) ;
 int BTreeTupleSetTopParent (scalar_t__,scalar_t__) ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int * BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LOG ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_4__*) ;
 scalar_t__ P_HIKEY ;
 scalar_t__ P_ISDELETED (TYPE_4__*) ;
 scalar_t__ P_ISHALFDEAD (TYPE_4__*) ;
 scalar_t__ P_ISLEAF (TYPE_4__*) ;
 scalar_t__ P_ISROOT (TYPE_4__*) ;
 scalar_t__ P_NONE ;
 int P_RIGHTMOST (TYPE_4__*) ;
 scalar_t__ PageGetItem (int *,int ) ;
 int PageGetItemId (int *,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int *) ;
 scalar_t__ PageGetSpecialPointer (int *) ;
 int PageSetLSN (int *,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 int ReadNewTransactionId () ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeUnlinkPage ;
 int XLOG_BTREE_UNLINK_PAGE ;
 int XLOG_BTREE_UNLINK_PAGE_META ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int _bt_getbuf (int ,scalar_t__,int ) ;
 int _bt_relbuf (int ,int ) ;
 int _bt_upgrademetapage (int *) ;
 int elog (int ,char*,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static bool
_bt_unlink_halfdead_page(Relation rel, Buffer leafbuf, bool *rightsib_empty)
{
 BlockNumber leafblkno = BufferGetBlockNumber(leafbuf);
 BlockNumber leafleftsib;
 BlockNumber leafrightsib;
 BlockNumber target;
 BlockNumber leftsib;
 BlockNumber rightsib;
 Buffer lbuf = InvalidBuffer;
 Buffer buf;
 Buffer rbuf;
 Buffer metabuf = InvalidBuffer;
 Page metapg = ((void*)0);
 BTMetaPageData *metad = ((void*)0);
 ItemId itemid;
 Page page;
 BTPageOpaque opaque;
 bool rightsib_is_rightmost;
 int targetlevel;
 IndexTuple leafhikey;
 BlockNumber nextchild;

 page = BufferGetPage(leafbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 Assert(P_ISLEAF(opaque) && P_ISHALFDEAD(opaque));




 itemid = PageGetItemId(page, P_HIKEY);
 leafhikey = (IndexTuple) PageGetItem(page, itemid);
 leafleftsib = opaque->btpo_prev;
 leafrightsib = opaque->btpo_next;

 LockBuffer(leafbuf, BUFFER_LOCK_UNLOCK);





 CHECK_FOR_INTERRUPTS();







 target = BTreeTupleGetTopParent(leafhikey);

 if (target != InvalidBlockNumber)
 {
  Assert(target != leafblkno);


  buf = _bt_getbuf(rel, target, BT_READ);
  page = BufferGetPage(buf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  leftsib = opaque->btpo_prev;
  targetlevel = opaque->btpo.level;





  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
 }
 else
 {
  target = leafblkno;

  buf = leafbuf;
  leftsib = leafleftsib;
  targetlevel = 0;
 }
 if (target != leafblkno)
  LockBuffer(leafbuf, BT_WRITE);
 if (leftsib != P_NONE)
 {
  lbuf = _bt_getbuf(rel, leftsib, BT_WRITE);
  page = BufferGetPage(lbuf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  while (P_ISDELETED(opaque) || opaque->btpo_next != target)
  {

   leftsib = opaque->btpo_next;
   _bt_relbuf(rel, lbuf);
   if (leftsib == P_NONE)
   {
    elog(LOG, "no left sibling (concurrent deletion?) of block %u in \"%s\"",
      target,
      RelationGetRelationName(rel));
    if (target != leafblkno)
    {

     ReleaseBuffer(buf);
     _bt_relbuf(rel, leafbuf);
    }
    else
    {

     ReleaseBuffer(leafbuf);
    }
    return 0;
   }
   lbuf = _bt_getbuf(rel, leftsib, BT_WRITE);
   page = BufferGetPage(lbuf);
   opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  }
 }
 else
  lbuf = InvalidBuffer;






 LockBuffer(buf, BT_WRITE);
 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);






 if (P_RIGHTMOST(opaque) || P_ISROOT(opaque) || P_ISDELETED(opaque))
 {
  elog(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
    target, RelationGetRelationName(rel));
 }
 if (opaque->btpo_prev != leftsib)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg_internal("left link changed unexpectedly in block %u of index \"%s\"",
         target, RelationGetRelationName(rel))));

 if (target == leafblkno)
 {
  if (P_FIRSTDATAKEY(opaque) <= PageGetMaxOffsetNumber(page) ||
   !P_ISLEAF(opaque) || !P_ISHALFDEAD(opaque))
   elog(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
     target, RelationGetRelationName(rel));
  nextchild = InvalidBlockNumber;
 }
 else
 {
  if (P_FIRSTDATAKEY(opaque) != PageGetMaxOffsetNumber(page) ||
   P_ISLEAF(opaque))
   elog(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
     target, RelationGetRelationName(rel));


  itemid = PageGetItemId(page, P_FIRSTDATAKEY(opaque));
  nextchild = BTreeInnerTupleGetDownLink((IndexTuple) PageGetItem(page, itemid));
  if (nextchild == leafblkno)
   nextchild = InvalidBlockNumber;
 }




 rightsib = opaque->btpo_next;
 rbuf = _bt_getbuf(rel, rightsib, BT_WRITE);
 page = BufferGetPage(rbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 if (opaque->btpo_prev != target)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg_internal("right sibling's left-link doesn't match: "
         "block %u links to %u instead of expected %u in index \"%s\"",
         rightsib, opaque->btpo_prev, target,
         RelationGetRelationName(rel))));
 rightsib_is_rightmost = P_RIGHTMOST(opaque);
 *rightsib_empty = (P_FIRSTDATAKEY(opaque) > PageGetMaxOffsetNumber(page));
 if (leftsib == P_NONE && rightsib_is_rightmost)
 {
  page = BufferGetPage(rbuf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  if (P_RIGHTMOST(opaque))
  {

   metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_WRITE);
   metapg = BufferGetPage(metabuf);
   metad = BTPageGetMeta(metapg);






   if (metad->btm_fastlevel > targetlevel + 1)
   {

    _bt_relbuf(rel, metabuf);
    metabuf = InvalidBuffer;
   }
  }
 }






 START_CRIT_SECTION();






 if (BufferIsValid(lbuf))
 {
  page = BufferGetPage(lbuf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  Assert(opaque->btpo_next == target);
  opaque->btpo_next = rightsib;
 }
 page = BufferGetPage(rbuf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 Assert(opaque->btpo_prev == target);
 opaque->btpo_prev = leftsib;






 if (target != leafblkno)
  BTreeTupleSetTopParent(leafhikey, nextchild);
 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 opaque->btpo_flags &= ~BTP_HALF_DEAD;
 opaque->btpo_flags |= BTP_DELETED;
 opaque->btpo.xact = ReadNewTransactionId();


 if (BufferIsValid(metabuf))
 {

  if (metad->btm_version < BTREE_NOVAC_VERSION)
   _bt_upgrademetapage(metapg);
  metad->btm_fastroot = rightsib;
  metad->btm_fastlevel = targetlevel;
  MarkBufferDirty(metabuf);
 }


 MarkBufferDirty(rbuf);
 MarkBufferDirty(buf);
 if (BufferIsValid(lbuf))
  MarkBufferDirty(lbuf);
 if (target != leafblkno)
  MarkBufferDirty(leafbuf);


 if (RelationNeedsWAL(rel))
 {
  xl_btree_unlink_page xlrec;
  xl_btree_metadata xlmeta;
  uint8 xlinfo;
  XLogRecPtr recptr;

  XLogBeginInsert();

  XLogRegisterBuffer(0, buf, REGBUF_WILL_INIT);
  if (BufferIsValid(lbuf))
   XLogRegisterBuffer(1, lbuf, REGBUF_STANDARD);
  XLogRegisterBuffer(2, rbuf, REGBUF_STANDARD);
  if (target != leafblkno)
   XLogRegisterBuffer(3, leafbuf, REGBUF_WILL_INIT);


  xlrec.leftsib = leftsib;
  xlrec.rightsib = rightsib;
  xlrec.btpo_xact = opaque->btpo.xact;


  xlrec.leafleftsib = leafleftsib;
  xlrec.leafrightsib = leafrightsib;
  xlrec.topparent = nextchild;

  XLogRegisterData((char *) &xlrec, SizeOfBtreeUnlinkPage);

  if (BufferIsValid(metabuf))
  {
   XLogRegisterBuffer(4, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

   Assert(metad->btm_version >= BTREE_NOVAC_VERSION);
   xlmeta.version = metad->btm_version;
   xlmeta.root = metad->btm_root;
   xlmeta.level = metad->btm_level;
   xlmeta.fastroot = metad->btm_fastroot;
   xlmeta.fastlevel = metad->btm_fastlevel;
   xlmeta.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
   xlmeta.last_cleanup_num_heap_tuples = metad->btm_last_cleanup_num_heap_tuples;

   XLogRegisterBufData(4, (char *) &xlmeta, sizeof(xl_btree_metadata));
   xlinfo = XLOG_BTREE_UNLINK_PAGE_META;
  }
  else
   xlinfo = XLOG_BTREE_UNLINK_PAGE;

  recptr = XLogInsert(RM_BTREE_ID, xlinfo);

  if (BufferIsValid(metabuf))
  {
   PageSetLSN(metapg, recptr);
  }
  page = BufferGetPage(rbuf);
  PageSetLSN(page, recptr);
  page = BufferGetPage(buf);
  PageSetLSN(page, recptr);
  if (BufferIsValid(lbuf))
  {
   page = BufferGetPage(lbuf);
   PageSetLSN(page, recptr);
  }
  if (target != leafblkno)
  {
   page = BufferGetPage(leafbuf);
   PageSetLSN(page, recptr);
  }
 }

 END_CRIT_SECTION();


 if (BufferIsValid(metabuf))
  _bt_relbuf(rel, metabuf);


 if (BufferIsValid(lbuf))
  _bt_relbuf(rel, lbuf);
 _bt_relbuf(rel, rbuf);





 if (target != leafblkno)
  _bt_relbuf(rel, buf);

 return 1;
}
