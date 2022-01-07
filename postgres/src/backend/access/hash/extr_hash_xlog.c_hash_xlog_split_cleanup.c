
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_5__ {int EndRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_6__ {int hasho_flag; } ;
typedef scalar_t__ Page ;
typedef TYPE_2__* HashPageOpaque ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int LH_BUCKET_NEEDS_SPLIT_CLEANUP ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
hash_xlog_split_cleanup(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;
 Page page;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  HashPageOpaque bucket_opaque;

  page = (Page) BufferGetPage(buffer);

  bucket_opaque = (HashPageOpaque) PageGetSpecialPointer(page);
  bucket_opaque->hasho_flag &= ~LH_BUCKET_NEEDS_SPLIT_CLEANUP;
  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
