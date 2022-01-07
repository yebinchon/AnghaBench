
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ginxlogRecompressDataLeaf ;
struct TYPE_2__ {int offset; int newitem; } ;
typedef TYPE_1__ ginxlogInsertDataInternal ;
typedef int PostingItem ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int GinDataPageAddPostingItem (int ,int *,int ) ;
 int * GinDataPageGetPostingItem (int ,int ) ;
 int GinPageIsLeaf (int ) ;
 int PostingItemSetBlockNumber (int *,int ) ;
 int ginRedoRecompress (int ,int *) ;

__attribute__((used)) static void
ginRedoInsertData(Buffer buffer, bool isLeaf, BlockNumber rightblkno, void *rdata)
{
 Page page = BufferGetPage(buffer);

 if (isLeaf)
 {
  ginxlogRecompressDataLeaf *data = (ginxlogRecompressDataLeaf *) rdata;

  Assert(GinPageIsLeaf(page));

  ginRedoRecompress(page, data);
 }
 else
 {
  ginxlogInsertDataInternal *data = (ginxlogInsertDataInternal *) rdata;
  PostingItem *oldpitem;

  Assert(!GinPageIsLeaf(page));


  oldpitem = GinDataPageGetPostingItem(page, data->offset);
  PostingItemSetBlockNumber(oldpitem, rightblkno);

  GinDataPageAddPostingItem(page, &data->newitem, data->offset);
 }
}
