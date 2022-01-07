
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; scalar_t__ last_cleanup_num_heap_tuples; scalar_t__ oldest_btpo_xact; int fastlevel; int fastroot; int level; int root; } ;
typedef TYPE_1__ xl_btree_metadata ;
typedef scalar_t__ float8 ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_5__ {scalar_t__ btm_version; scalar_t__ btm_oldest_btpo_xact; scalar_t__ btm_last_cleanup_num_heap_tuples; int btm_fastlevel; int btm_fastroot; int btm_level; int btm_root; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef TYPE_2__ BTMetaPageData ;


 int Assert (int) ;
 TYPE_2__* BTPageGetMeta (int ) ;
 int BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 int BT_READ ;
 int BT_WRITE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BTREE_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int XLOG_BTREE_META_CLEANUP ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,int ,int) ;
 int _bt_getbuf (int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int _bt_upgrademetapage (int ) ;

void
_bt_update_meta_cleanup_info(Relation rel, TransactionId oldestBtpoXact,
        float8 numHeapTuples)
{
 Buffer metabuf;
 Page metapg;
 BTMetaPageData *metad;
 bool needsRewrite = 0;
 XLogRecPtr recptr;


 metabuf = _bt_getbuf(rel, BTREE_METAPAGE, BT_READ);
 metapg = BufferGetPage(metabuf);
 metad = BTPageGetMeta(metapg);


 if (metad->btm_version < BTREE_NOVAC_VERSION)
  needsRewrite = 1;
 else if (metad->btm_oldest_btpo_xact != oldestBtpoXact ||
    metad->btm_last_cleanup_num_heap_tuples != numHeapTuples)
  needsRewrite = 1;

 if (!needsRewrite)
 {
  _bt_relbuf(rel, metabuf);
  return;
 }


 LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);
 LockBuffer(metabuf, BT_WRITE);

 START_CRIT_SECTION();


 if (metad->btm_version < BTREE_NOVAC_VERSION)
  _bt_upgrademetapage(metapg);


 metad->btm_oldest_btpo_xact = oldestBtpoXact;
 metad->btm_last_cleanup_num_heap_tuples = numHeapTuples;
 MarkBufferDirty(metabuf);


 if (RelationNeedsWAL(rel))
 {
  xl_btree_metadata md;

  XLogBeginInsert();
  XLogRegisterBuffer(0, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

  Assert(metad->btm_version >= BTREE_NOVAC_VERSION);
  md.version = metad->btm_version;
  md.root = metad->btm_root;
  md.level = metad->btm_level;
  md.fastroot = metad->btm_fastroot;
  md.fastlevel = metad->btm_fastlevel;
  md.oldest_btpo_xact = oldestBtpoXact;
  md.last_cleanup_num_heap_tuples = numHeapTuples;

  XLogRegisterBufData(0, (char *) &md, sizeof(xl_btree_metadata));

  recptr = XLogInsert(RM_BTREE_ID, XLOG_BTREE_META_CLEANUP);

  PageSetLSN(metapg, recptr);
 }

 END_CRIT_SECTION();
 _bt_relbuf(rel, metabuf);
}
