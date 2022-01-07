
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndeleted; int metadata; } ;
typedef TYPE_1__ ginxlogDeleteListPages ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Page ;
typedef int GinMetaPageData ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int GIN_DELETED ;
 scalar_t__ GIN_METAPAGE_BLKNO ;
 int GinInitBuffer (int ,int ) ;
 int GinInitMetabuffer (int ) ;
 int GinPageGetMeta (int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
ginRedoDeleteListPages(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogDeleteListPages *data = (ginxlogDeleteListPages *) XLogRecGetData(record);
 Buffer metabuffer;
 Page metapage;
 int i;

 metabuffer = XLogInitBufferForRedo(record, 0);
 Assert(BufferGetBlockNumber(metabuffer) == GIN_METAPAGE_BLKNO);
 metapage = BufferGetPage(metabuffer);

 GinInitMetabuffer(metabuffer);

 memcpy(GinPageGetMeta(metapage), &data->metadata, sizeof(GinMetaPageData));
 PageSetLSN(metapage, lsn);
 MarkBufferDirty(metabuffer);
 for (i = 0; i < data->ndeleted; i++)
 {
  Buffer buffer;
  Page page;

  buffer = XLogInitBufferForRedo(record, i + 1);
  page = BufferGetPage(buffer);
  GinInitBuffer(buffer, GIN_DELETED);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);

  UnlockReleaseBuffer(buffer);
 }
 UnlockReleaseBuffer(metabuffer);
}
