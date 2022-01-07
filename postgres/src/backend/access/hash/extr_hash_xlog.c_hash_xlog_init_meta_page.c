
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ffactor; int procid; int num_tuples; } ;
typedef TYPE_1__ xl_hash_init_meta_page ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef scalar_t__ Page ;
typedef scalar_t__ ForkNumber ;
typedef int Buffer ;


 int Assert (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int FlushOneBuffer (int ) ;
 scalar_t__ INIT_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,scalar_t__*,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int _hash_init_metabuffer (int ,int ,int ,int ,int) ;

__attribute__((used)) static void
hash_xlog_init_meta_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Page page;
 Buffer metabuf;
 ForkNumber forknum;

 xl_hash_init_meta_page *xlrec = (xl_hash_init_meta_page *) XLogRecGetData(record);


 metabuf = XLogInitBufferForRedo(record, 0);
 Assert(BufferIsValid(metabuf));
 _hash_init_metabuffer(metabuf, xlrec->num_tuples, xlrec->procid,
        xlrec->ffactor, 1);
 page = (Page) BufferGetPage(metabuf);
 PageSetLSN(page, lsn);
 MarkBufferDirty(metabuf);







 XLogRecGetBlockTag(record, 0, ((void*)0), &forknum, ((void*)0));
 if (forknum == INIT_FORKNUM)
  FlushOneBuffer(metabuf);


 UnlockReleaseBuffer(metabuf);
}
