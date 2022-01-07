
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ntuples; } ;
typedef TYPE_1__ xl_hash_update_meta_page ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_10__ {int hashm_ntuples; } ;
typedef int Page ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
hash_xlog_update_meta_page(XLogReaderState *record)
{
 HashMetaPage metap;
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_update_meta_page *xldata = (xl_hash_update_meta_page *) XLogRecGetData(record);
 Buffer metabuf;
 Page page;

 if (XLogReadBufferForRedo(record, 0, &metabuf) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(metabuf);
  metap = HashPageGetMeta(page);

  metap->hashm_ntuples = xldata->ntuples;

  PageSetLSN(page, lsn);
  MarkBufferDirty(metabuf);
 }
 if (BufferIsValid(metabuf))
  UnlockReleaseBuffer(metabuf);
}
