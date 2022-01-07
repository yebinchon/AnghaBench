
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int version; int pagesPerRange; } ;
typedef TYPE_1__ xl_brin_createidx ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef scalar_t__ Page ;
typedef int Buffer ;


 int Assert (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int brin_metapage_init (scalar_t__,int ,int ) ;

__attribute__((used)) static void
brin_xlog_createidx(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_brin_createidx *xlrec = (xl_brin_createidx *) XLogRecGetData(record);
 Buffer buf;
 Page page;


 buf = XLogInitBufferForRedo(record, 0);
 Assert(BufferIsValid(buf));
 page = (Page) BufferGetPage(buf);
 brin_metapage_init(page, xlrec->pagesPerRange, xlrec->version);
 PageSetLSN(page, lsn);
 MarkBufferDirty(buf);
 UnlockReleaseBuffer(buf);
}
