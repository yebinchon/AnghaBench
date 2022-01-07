
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ version; int last_cleanup_num_heap_tuples; int oldest_btpo_xact; int fastlevel; int fastroot; int level; int root; } ;
typedef TYPE_1__ xl_btree_metadata ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_14__ {scalar_t__ btm_version; int btm_last_cleanup_num_heap_tuples; int btm_oldest_btpo_xact; int btm_fastlevel; int btm_fastroot; int btm_level; int btm_root; int btm_magic; } ;
struct TYPE_13__ {int btpo_flags; } ;
struct TYPE_12__ {int pd_lower; } ;
typedef int Size ;
typedef TYPE_3__* PageHeader ;
typedef scalar_t__ Page ;
typedef int Buffer ;
typedef TYPE_4__* BTPageOpaque ;
typedef TYPE_5__ BTMetaPageData ;


 int Assert (int) ;
 int BTP_META ;
 TYPE_5__* BTPageGetMeta (scalar_t__) ;
 int BTREE_MAGIC ;
 scalar_t__ BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int*) ;
 int _bt_pageinit (scalar_t__,int ) ;

__attribute__((used)) static void
_bt_restore_meta(XLogReaderState *record, uint8 block_id)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer metabuf;
 Page metapg;
 BTMetaPageData *md;
 BTPageOpaque pageop;
 xl_btree_metadata *xlrec;
 char *ptr;
 Size len;

 metabuf = XLogInitBufferForRedo(record, block_id);
 ptr = XLogRecGetBlockData(record, block_id, &len);

 Assert(len == sizeof(xl_btree_metadata));
 Assert(BufferGetBlockNumber(metabuf) == BTREE_METAPAGE);
 xlrec = (xl_btree_metadata *) ptr;
 metapg = BufferGetPage(metabuf);

 _bt_pageinit(metapg, BufferGetPageSize(metabuf));

 md = BTPageGetMeta(metapg);
 md->btm_magic = BTREE_MAGIC;
 md->btm_version = xlrec->version;
 md->btm_root = xlrec->root;
 md->btm_level = xlrec->level;
 md->btm_fastroot = xlrec->fastroot;
 md->btm_fastlevel = xlrec->fastlevel;

 Assert(md->btm_version >= BTREE_NOVAC_VERSION);
 md->btm_oldest_btpo_xact = xlrec->oldest_btpo_xact;
 md->btm_last_cleanup_num_heap_tuples = xlrec->last_cleanup_num_heap_tuples;

 pageop = (BTPageOpaque) PageGetSpecialPointer(metapg);
 pageop->btpo_flags = BTP_META;






 ((PageHeader) metapg)->pd_lower =
  ((char *) md + sizeof(BTMetaPageData)) - (char *) metapg;

 PageSetLSN(metapg, lsn);
 MarkBufferDirty(metabuf);
 UnlockReleaseBuffer(metabuf);
}
