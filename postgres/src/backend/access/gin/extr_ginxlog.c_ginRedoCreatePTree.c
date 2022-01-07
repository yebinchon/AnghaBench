
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
typedef TYPE_1__ ginxlogCreatePostingTree ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef scalar_t__ Page ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int GIN_COMPRESSED ;
 int GIN_DATA ;
 int GIN_LEAF ;
 int GinDataLeafPageGetPostingList (scalar_t__) ;
 int GinDataPageSetDataSize (scalar_t__,int ) ;
 int GinInitBuffer (int ,int) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int memcpy (int ,char*,int ) ;

__attribute__((used)) static void
ginRedoCreatePTree(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogCreatePostingTree *data = (ginxlogCreatePostingTree *) XLogRecGetData(record);
 char *ptr;
 Buffer buffer;
 Page page;

 buffer = XLogInitBufferForRedo(record, 0);
 page = (Page) BufferGetPage(buffer);

 GinInitBuffer(buffer, GIN_DATA | GIN_LEAF | GIN_COMPRESSED);

 ptr = XLogRecGetData(record) + sizeof(ginxlogCreatePostingTree);


 memcpy(GinDataLeafPageGetPostingList(page), ptr, data->size);

 GinDataPageSetDataSize(page, data->size);

 PageSetLSN(page, lsn);

 MarkBufferDirty(buffer);
 UnlockReleaseBuffer(buffer);
}
