
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ version; scalar_t__ fastlevel; int last_cleanup_num_heap_tuples; int oldest_btpo_xact; int fastroot; int level; int root; } ;
typedef TYPE_2__ xl_btree_metadata ;
struct TYPE_15__ {scalar_t__ offnum; } ;
typedef TYPE_3__ xl_btree_insert ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_17__ {scalar_t__ btm_fastlevel; scalar_t__ btm_version; int btm_last_cleanup_num_heap_tuples; int btm_oldest_btpo_xact; int btm_fastroot; int btm_level; int btm_root; } ;
struct TYPE_13__ {scalar_t__ level; } ;
struct TYPE_16__ {int btpo_flags; TYPE_1__ btpo; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int * Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef int BTStack ;
typedef int BTScanInsert ;
typedef TYPE_4__* BTPageOpaque ;
typedef TYPE_5__ BTMetaPageData ;


 int Assert (int) ;
 int BTP_INCOMPLETE_SPLIT ;
 TYPE_5__* BTPageGetMeta (int *) ;
 scalar_t__ BTREE_FASTPATH_MIN_LEVEL ;
 int BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 int BT_WRITE ;
 scalar_t__ BTreeTupleGetNAtts (scalar_t__,int ) ;
 scalar_t__ BlockNumberIsValid (int ) ;
 int BufferGetBlockNumber (int ) ;
 int * BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ IndexRelationGetNumberOfAttributes (int ) ;
 scalar_t__ IndexRelationGetNumberOfKeyAttributes (int ) ;
 int IndexTupleSize (scalar_t__) ;
 int InvalidBlockNumber ;
 int InvalidBuffer ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_4__*) ;
 int P_INCOMPLETE_SPLIT (TYPE_4__*) ;
 int P_ISLEAF (TYPE_4__*) ;
 int P_ISROOT (TYPE_4__*) ;
 scalar_t__ P_LEFTMOST (TYPE_4__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_4__*) ;
 scalar_t__ PageGetFreeSpace (int *) ;
 scalar_t__ PageGetSpecialPointer (int *) ;
 int PageSetLSN (int *,int ) ;
 int PredicateLockPageSplit (int ,int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 int RelationGetRelationName (int ) ;
 int RelationGetTargetBlock (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int RelationSetTargetBlock (int ,int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeInsert ;
 int XLOG_BTREE_INSERT_LEAF ;
 int XLOG_BTREE_INSERT_META ;
 int XLOG_BTREE_INSERT_UPPER ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int _bt_getbuf (int ,int ,int ) ;
 scalar_t__ _bt_getrootheight (int ) ;
 int _bt_insert_parent (int ,int ,int ,int ,int,int) ;
 int _bt_pgaddtup (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int _bt_relbuf (int ,int ) ;
 int _bt_split (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int _bt_upgrademetapage (int *) ;
 int elog (int ,char*,int ,...) ;

__attribute__((used)) static void
_bt_insertonpg(Relation rel,
      BTScanInsert itup_key,
      Buffer buf,
      Buffer cbuf,
      BTStack stack,
      IndexTuple itup,
      OffsetNumber newitemoff,
      bool split_only_page)
{
 Page page;
 BTPageOpaque lpageop;
 Size itemsz;

 page = BufferGetPage(buf);
 lpageop = (BTPageOpaque) PageGetSpecialPointer(page);


 Assert(P_ISLEAF(lpageop) == !BufferIsValid(cbuf));

 Assert(!P_ISLEAF(lpageop) ||
     BTreeTupleGetNAtts(itup, rel) ==
     IndexRelationGetNumberOfAttributes(rel));
 Assert(P_ISLEAF(lpageop) ||
     BTreeTupleGetNAtts(itup, rel) <=
     IndexRelationGetNumberOfKeyAttributes(rel));


 if (P_INCOMPLETE_SPLIT(lpageop))
  elog(ERROR, "cannot insert to incompletely split page %u",
    BufferGetBlockNumber(buf));

 itemsz = IndexTupleSize(itup);
 itemsz = MAXALIGN(itemsz);
 if (PageGetFreeSpace(page) < itemsz)
 {
  bool is_root = P_ISROOT(lpageop);
  bool is_only = P_LEFTMOST(lpageop) && P_RIGHTMOST(lpageop);
  Buffer rbuf;
  Assert(!(P_ISLEAF(lpageop) &&
     BlockNumberIsValid(RelationGetTargetBlock(rel))));


  rbuf = _bt_split(rel, itup_key, buf, cbuf, newitemoff, itemsz, itup);
  PredicateLockPageSplit(rel,
          BufferGetBlockNumber(buf),
          BufferGetBlockNumber(rbuf));
  _bt_insert_parent(rel, buf, rbuf, stack, is_root, is_only);
 }
 else
 {
  Buffer metabuf = InvalidBuffer;
  Page metapg = ((void*)0);
  BTMetaPageData *metad = ((void*)0);
  OffsetNumber itup_off;
  BlockNumber itup_blkno;
  BlockNumber cachedBlock = InvalidBlockNumber;

  itup_off = newitemoff;
  itup_blkno = BufferGetBlockNumber(buf);
  if (split_only_page)
  {
   Assert(!P_ISLEAF(lpageop));

   metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_WRITE);
   metapg = BufferGetPage(metabuf);
   metad = BTPageGetMeta(metapg);

   if (metad->btm_fastlevel >= lpageop->btpo.level)
   {

    _bt_relbuf(rel, metabuf);
    metabuf = InvalidBuffer;
   }
  }
  if (!P_ISLEAF(lpageop) && newitemoff == P_FIRSTDATAKEY(lpageop))
   elog(ERROR, "cannot insert second negative infinity item in block %u of index \"%s\"",
     itup_blkno, RelationGetRelationName(rel));


  START_CRIT_SECTION();

  if (!_bt_pgaddtup(page, itemsz, itup, newitemoff))
   elog(PANIC, "failed to add new item to block %u in index \"%s\"",
     itup_blkno, RelationGetRelationName(rel));

  MarkBufferDirty(buf);

  if (BufferIsValid(metabuf))
  {

   if (metad->btm_version < BTREE_NOVAC_VERSION)
    _bt_upgrademetapage(metapg);
   metad->btm_fastroot = itup_blkno;
   metad->btm_fastlevel = lpageop->btpo.level;
   MarkBufferDirty(metabuf);
  }


  if (BufferIsValid(cbuf))
  {
   Page cpage = BufferGetPage(cbuf);
   BTPageOpaque cpageop = (BTPageOpaque) PageGetSpecialPointer(cpage);

   Assert(P_INCOMPLETE_SPLIT(cpageop));
   cpageop->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;
   MarkBufferDirty(cbuf);
  }







  if (P_RIGHTMOST(lpageop) && P_ISLEAF(lpageop) && !P_ISROOT(lpageop))
   cachedBlock = BufferGetBlockNumber(buf);


  if (RelationNeedsWAL(rel))
  {
   xl_btree_insert xlrec;
   xl_btree_metadata xlmeta;
   uint8 xlinfo;
   XLogRecPtr recptr;

   xlrec.offnum = itup_off;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, SizeOfBtreeInsert);

   if (P_ISLEAF(lpageop))
    xlinfo = XLOG_BTREE_INSERT_LEAF;
   else
   {




    XLogRegisterBuffer(1, cbuf, REGBUF_STANDARD);

    xlinfo = XLOG_BTREE_INSERT_UPPER;
   }

   if (BufferIsValid(metabuf))
   {
    Assert(metad->btm_version >= BTREE_NOVAC_VERSION);
    xlmeta.version = metad->btm_version;
    xlmeta.root = metad->btm_root;
    xlmeta.level = metad->btm_level;
    xlmeta.fastroot = metad->btm_fastroot;
    xlmeta.fastlevel = metad->btm_fastlevel;
    xlmeta.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
    xlmeta.last_cleanup_num_heap_tuples =
     metad->btm_last_cleanup_num_heap_tuples;

    XLogRegisterBuffer(2, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);
    XLogRegisterBufData(2, (char *) &xlmeta, sizeof(xl_btree_metadata));

    xlinfo = XLOG_BTREE_INSERT_META;
   }

   XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
   XLogRegisterBufData(0, (char *) itup, IndexTupleSize(itup));

   recptr = XLogInsert(RM_BTREE_ID, xlinfo);

   if (BufferIsValid(metabuf))
   {
    PageSetLSN(metapg, recptr);
   }
   if (BufferIsValid(cbuf))
   {
    PageSetLSN(BufferGetPage(cbuf), recptr);
   }

   PageSetLSN(page, recptr);
  }

  END_CRIT_SECTION();


  if (BufferIsValid(metabuf))
   _bt_relbuf(rel, metabuf);
  if (BufferIsValid(cbuf))
   _bt_relbuf(rel, cbuf);
  _bt_relbuf(rel, buf);
  if (BlockNumberIsValid(cachedBlock) &&
   _bt_getrootheight(rel) >= BTREE_FASTPATH_MIN_LEVEL)
   RelationSetTargetBlock(rel, cachedBlock);
 }
}
