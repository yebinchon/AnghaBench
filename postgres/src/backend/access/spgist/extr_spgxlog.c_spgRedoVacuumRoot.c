
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nDelete; int * offsets; } ;
typedef TYPE_1__ spgxlogVacuumRoot ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 int PageIndexMultiDelete (int ,int *,int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
spgRedoVacuumRoot(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 char *ptr = XLogRecGetData(record);
 spgxlogVacuumRoot *xldata = (spgxlogVacuumRoot *) ptr;
 OffsetNumber *toDelete;
 Buffer buffer;
 Page page;

 toDelete = xldata->offsets;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);


  PageIndexMultiDelete(page, toDelete, xldata->nDelete);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
