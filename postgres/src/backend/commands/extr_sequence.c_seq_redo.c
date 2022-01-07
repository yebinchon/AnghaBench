
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xl_seq_rec ;
typedef scalar_t__ uint8 ;
struct TYPE_8__ {int magic; } ;
typedef TYPE_1__ sequence_magic ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef scalar_t__ Size ;
typedef scalar_t__ Page ;
typedef int Item ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int FirstOffsetNumber ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageAddItem (scalar_t__,int ,scalar_t__,int ,int,int) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageInit (scalar_t__,int ,int) ;
 int PageSetLSN (scalar_t__,int ) ;
 int SEQ_MAGIC ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLOG_SEQ_LOG ;
 scalar_t__ XLR_INFO_MASK ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecGetDataLen (TYPE_2__*) ;
 scalar_t__ XLogRecGetInfo (TYPE_2__*) ;
 int elog (int ,char*,...) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 scalar_t__ palloc (int ) ;
 int pfree (scalar_t__) ;

void
seq_redo(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;
 Buffer buffer;
 Page page;
 Page localpage;
 char *item;
 Size itemsz;
 xl_seq_rec *xlrec = (xl_seq_rec *) XLogRecGetData(record);
 sequence_magic *sm;

 if (info != XLOG_SEQ_LOG)
  elog(PANIC, "seq_redo: unknown op code %u", info);

 buffer = XLogInitBufferForRedo(record, 0);
 page = (Page) BufferGetPage(buffer);
 localpage = (Page) palloc(BufferGetPageSize(buffer));

 PageInit(localpage, BufferGetPageSize(buffer), sizeof(sequence_magic));
 sm = (sequence_magic *) PageGetSpecialPointer(localpage);
 sm->magic = SEQ_MAGIC;

 item = (char *) xlrec + sizeof(xl_seq_rec);
 itemsz = XLogRecGetDataLen(record) - sizeof(xl_seq_rec);

 if (PageAddItem(localpage, (Item) item, itemsz,
     FirstOffsetNumber, 0, 0) == InvalidOffsetNumber)
  elog(PANIC, "seq_redo: failed to add item to page");

 PageSetLSN(localpage, lsn);

 memcpy(page, localpage, BufferGetPageSize(buffer));
 MarkBufferDirty(buffer);
 UnlockReleaseBuffer(buffer);

 pfree(localpage);
}
