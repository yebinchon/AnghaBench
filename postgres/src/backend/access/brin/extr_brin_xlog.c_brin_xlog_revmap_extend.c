
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int targetBlk; } ;
typedef TYPE_1__ xl_brin_revmap_extend ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_13__ {int lastRevmapPage; } ;
struct TYPE_12__ {int pd_lower; } ;
typedef TYPE_3__* PageHeader ;
typedef scalar_t__ Page ;
typedef int Buffer ;
typedef TYPE_4__ BrinMetaPageData ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BRIN_PAGETYPE_REVMAP ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetContents (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int brin_page_init (scalar_t__,int ) ;

__attribute__((used)) static void
brin_xlog_revmap_extend(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_brin_revmap_extend *xlrec;
 Buffer metabuf;
 Buffer buf;
 Page page;
 BlockNumber targetBlk;
 XLogRedoAction action;

 xlrec = (xl_brin_revmap_extend *) XLogRecGetData(record);

 XLogRecGetBlockTag(record, 1, ((void*)0), ((void*)0), &targetBlk);
 Assert(xlrec->targetBlk == targetBlk);


 action = XLogReadBufferForRedo(record, 0, &metabuf);
 if (action == BLK_NEEDS_REDO)
 {
  Page metapg;
  BrinMetaPageData *metadata;

  metapg = BufferGetPage(metabuf);
  metadata = (BrinMetaPageData *) PageGetContents(metapg);

  Assert(metadata->lastRevmapPage == xlrec->targetBlk - 1);
  metadata->lastRevmapPage = xlrec->targetBlk;

  PageSetLSN(metapg, lsn);
  ((PageHeader) metapg)->pd_lower =
   ((char *) metadata + sizeof(BrinMetaPageData)) - (char *) metapg;

  MarkBufferDirty(metabuf);
 }






 buf = XLogInitBufferForRedo(record, 1);
 page = (Page) BufferGetPage(buf);
 brin_page_init(page, BRIN_PAGETYPE_REVMAP);

 PageSetLSN(page, lsn);
 MarkBufferDirty(buf);

 UnlockReleaseBuffer(buf);
 if (BufferIsValid(metabuf))
  UnlockReleaseBuffer(metabuf);
}
