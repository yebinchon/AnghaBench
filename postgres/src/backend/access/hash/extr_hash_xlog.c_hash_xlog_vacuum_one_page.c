
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ntuples; int latestRemovedXid; } ;
typedef TYPE_1__ xl_hash_vacuum_one_page ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_13__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_15__ {int hashm_ntuples; } ;
struct TYPE_14__ {int hasho_flag; } ;
typedef int RelFileNode ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef TYPE_3__* HashPageOpaque ;
typedef TYPE_4__* HashMetaPage ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 TYPE_4__* HashPageGetMeta (scalar_t__) ;
 scalar_t__ InHotStandby ;
 int LH_PAGE_HAS_DEAD_TUPLES ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,int *,scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ SizeOfHashVacuumOnePage ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int ,int ,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecGetDataLen (TYPE_2__*) ;

__attribute__((used)) static void
hash_xlog_vacuum_one_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_vacuum_one_page *xldata;
 Buffer buffer;
 Buffer metabuf;
 Page page;
 XLogRedoAction action;
 HashPageOpaque pageopaque;

 xldata = (xl_hash_vacuum_one_page *) XLogRecGetData(record);
 if (InHotStandby)
 {
  RelFileNode rnode;

  XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), ((void*)0));
  ResolveRecoveryConflictWithSnapshot(xldata->latestRemovedXid, rnode);
 }

 action = XLogReadBufferForRedoExtended(record, 0, RBM_NORMAL, 1, &buffer);

 if (action == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);

  if (XLogRecGetDataLen(record) > SizeOfHashVacuumOnePage)
  {
   OffsetNumber *unused;

   unused = (OffsetNumber *) ((char *) xldata + SizeOfHashVacuumOnePage);

   PageIndexMultiDelete(page, unused, xldata->ntuples);
  }





  pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
  pageopaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);

 if (XLogReadBufferForRedo(record, 1, &metabuf) == BLK_NEEDS_REDO)
 {
  Page metapage;
  HashMetaPage metap;

  metapage = BufferGetPage(metabuf);
  metap = HashPageGetMeta(metapage);

  metap->hashm_ntuples -= xldata->ntuples;

  PageSetLSN(metapage, lsn);
  MarkBufferDirty(metabuf);
 }
 if (BufferIsValid(metabuf))
  UnlockReleaseBuffer(metabuf);
}
