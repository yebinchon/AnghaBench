
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ level; void* rootblk; } ;
typedef TYPE_2__ xl_btree_newroot ;
struct TYPE_18__ {scalar_t__ version; int last_cleanup_num_heap_tuples; int oldest_btpo_xact; scalar_t__ fastlevel; void* fastroot; scalar_t__ level; void* root; } ;
typedef TYPE_3__ xl_btree_metadata ;
typedef int XLogRecPtr ;
struct TYPE_22__ {scalar_t__ btm_version; int btm_last_cleanup_num_heap_tuples; int btm_oldest_btpo_xact; scalar_t__ btm_level; scalar_t__ btm_fastlevel; void* btm_fastroot; void* btm_root; } ;
struct TYPE_16__ {scalar_t__ level; } ;
struct TYPE_21__ {int btpo_flags; TYPE_1__ btpo; scalar_t__ btpo_cycleid; int btpo_next; int btpo_prev; } ;
struct TYPE_20__ {int t_info; } ;
struct TYPE_19__ {int pd_upper; int pd_special; } ;
typedef int Size ;
typedef int Relation ;
typedef TYPE_4__* PageHeader ;
typedef scalar_t__ Page ;
typedef int ItemId ;
typedef int Item ;
typedef int IndexTupleData ;
typedef TYPE_5__* IndexTuple ;
typedef int Buffer ;
typedef void* BlockNumber ;
typedef TYPE_6__* BTPageOpaque ;
typedef TYPE_7__ BTMetaPageData ;


 int Assert (int) ;
 int BTP_INCOMPLETE_SPLIT ;
 int BTP_ROOT ;
 TYPE_7__* BTPageGetMeta (scalar_t__) ;
 int BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 int BT_WRITE ;
 int BTreeInnerTupleSetDownLink (TYPE_5__*,void*) ;
 scalar_t__ BTreeTupleGetNAtts (TYPE_5__*,int ) ;
 int BTreeTupleSetNAtts (TYPE_5__*,int ) ;
 void* BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 TYPE_5__* CopyIndexTuple (TYPE_5__*) ;
 int END_CRIT_SECTION () ;
 scalar_t__ IndexRelationGetNumberOfKeyAttributes (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemIdGetLength (int ) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 int P_FIRSTKEY ;
 int P_HIKEY ;
 int P_INCOMPLETE_SPLIT (TYPE_6__*) ;
 int P_NEW ;
 int P_NONE ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,int ,int,int) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBtreeNewroot ;
 int XLOG_BTREE_NEWROOT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int _bt_getbuf (int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int _bt_upgrademetapage (scalar_t__) ;
 int elog (int ,char*,void*,int ) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_5__*) ;

__attribute__((used)) static Buffer
_bt_newroot(Relation rel, Buffer lbuf, Buffer rbuf)
{
 Buffer rootbuf;
 Page lpage,
    rootpage;
 BlockNumber lbkno,
    rbkno;
 BlockNumber rootblknum;
 BTPageOpaque rootopaque;
 BTPageOpaque lopaque;
 ItemId itemid;
 IndexTuple item;
 IndexTuple left_item;
 Size left_item_sz;
 IndexTuple right_item;
 Size right_item_sz;
 Buffer metabuf;
 Page metapg;
 BTMetaPageData *metad;

 lbkno = BufferGetBlockNumber(lbuf);
 rbkno = BufferGetBlockNumber(rbuf);
 lpage = BufferGetPage(lbuf);
 lopaque = (BTPageOpaque) PageGetSpecialPointer(lpage);


 rootbuf = _bt_getbuf(rel, P_NEW, BT_WRITE);
 rootpage = BufferGetPage(rootbuf);
 rootblknum = BufferGetBlockNumber(rootbuf);


 metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_WRITE);
 metapg = BufferGetPage(metabuf);
 metad = BTPageGetMeta(metapg);






 left_item_sz = sizeof(IndexTupleData);
 left_item = (IndexTuple) palloc(left_item_sz);
 left_item->t_info = left_item_sz;
 BTreeInnerTupleSetDownLink(left_item, lbkno);
 BTreeTupleSetNAtts(left_item, 0);





 itemid = PageGetItemId(lpage, P_HIKEY);
 right_item_sz = ItemIdGetLength(itemid);
 item = (IndexTuple) PageGetItem(lpage, itemid);
 right_item = CopyIndexTuple(item);
 BTreeInnerTupleSetDownLink(right_item, rbkno);


 START_CRIT_SECTION();


 if (metad->btm_version < BTREE_NOVAC_VERSION)
  _bt_upgrademetapage(metapg);


 rootopaque = (BTPageOpaque) PageGetSpecialPointer(rootpage);
 rootopaque->btpo_prev = rootopaque->btpo_next = P_NONE;
 rootopaque->btpo_flags = BTP_ROOT;
 rootopaque->btpo.level =
  ((BTPageOpaque) PageGetSpecialPointer(lpage))->btpo.level + 1;
 rootopaque->btpo_cycleid = 0;


 metad->btm_root = rootblknum;
 metad->btm_level = rootopaque->btpo.level;
 metad->btm_fastroot = rootblknum;
 metad->btm_fastlevel = rootopaque->btpo.level;
 Assert(BTreeTupleGetNAtts(left_item, rel) == 0);
 if (PageAddItem(rootpage, (Item) left_item, left_item_sz, P_HIKEY,
     0, 0) == InvalidOffsetNumber)
  elog(PANIC, "failed to add leftkey to new root page"
    " while splitting block %u of index \"%s\"",
    BufferGetBlockNumber(lbuf), RelationGetRelationName(rel));




 Assert(BTreeTupleGetNAtts(right_item, rel) > 0);
 Assert(BTreeTupleGetNAtts(right_item, rel) <=
     IndexRelationGetNumberOfKeyAttributes(rel));
 if (PageAddItem(rootpage, (Item) right_item, right_item_sz, P_FIRSTKEY,
     0, 0) == InvalidOffsetNumber)
  elog(PANIC, "failed to add rightkey to new root page"
    " while splitting block %u of index \"%s\"",
    BufferGetBlockNumber(lbuf), RelationGetRelationName(rel));


 Assert(P_INCOMPLETE_SPLIT(lopaque));
 lopaque->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;
 MarkBufferDirty(lbuf);

 MarkBufferDirty(rootbuf);
 MarkBufferDirty(metabuf);


 if (RelationNeedsWAL(rel))
 {
  xl_btree_newroot xlrec;
  XLogRecPtr recptr;
  xl_btree_metadata md;

  xlrec.rootblk = rootblknum;
  xlrec.level = metad->btm_level;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBtreeNewroot);

  XLogRegisterBuffer(0, rootbuf, REGBUF_WILL_INIT);
  XLogRegisterBuffer(1, lbuf, REGBUF_STANDARD);
  XLogRegisterBuffer(2, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

  Assert(metad->btm_version >= BTREE_NOVAC_VERSION);
  md.version = metad->btm_version;
  md.root = rootblknum;
  md.level = metad->btm_level;
  md.fastroot = rootblknum;
  md.fastlevel = metad->btm_level;
  md.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
  md.last_cleanup_num_heap_tuples = metad->btm_last_cleanup_num_heap_tuples;

  XLogRegisterBufData(2, (char *) &md, sizeof(xl_btree_metadata));





  XLogRegisterBufData(0,
       (char *) rootpage + ((PageHeader) rootpage)->pd_upper,
       ((PageHeader) rootpage)->pd_special -
       ((PageHeader) rootpage)->pd_upper);

  recptr = XLogInsert(RM_BTREE_ID, XLOG_BTREE_NEWROOT);

  PageSetLSN(lpage, recptr);
  PageSetLSN(rootpage, recptr);
  PageSetLSN(metapg, recptr);
 }

 END_CRIT_SECTION();


 _bt_relbuf(rel, metabuf);

 pfree(left_item);
 pfree(right_item);

 return rootbuf;
}
