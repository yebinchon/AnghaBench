
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int newitem; int offset; } ;
typedef TYPE_1__ ginxlogInsertDataInternal ;
struct TYPE_8__ {int isBuild; int index; } ;
struct TYPE_7__ {int off; } ;
typedef int PostingItem ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_2__ GinBtreeStack ;
typedef TYPE_3__* GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int GinDataPageAddPostingItem (int ,int *,int ) ;
 int * GinDataPageGetPostingItem (int ,int ) ;
 int PostingItemSetBlockNumber (int *,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int XLogRegisterBufData (int ,char*,int) ;

__attribute__((used)) static void
dataExecPlaceToPageInternal(GinBtree btree, Buffer buf, GinBtreeStack *stack,
       void *insertdata, BlockNumber updateblkno,
       void *ptp_workspace)
{
 Page page = BufferGetPage(buf);
 OffsetNumber off = stack->off;
 PostingItem *pitem;


 pitem = GinDataPageGetPostingItem(page, off);
 PostingItemSetBlockNumber(pitem, updateblkno);


 pitem = (PostingItem *) insertdata;
 GinDataPageAddPostingItem(page, pitem, off);

 if (RelationNeedsWAL(btree->index) && !btree->isBuild)
 {





  static ginxlogInsertDataInternal data;

  data.offset = off;
  data.newitem = *pitem;

  XLogRegisterBufData(0, (char *) &data,
       sizeof(ginxlogInsertDataInternal));
 }
}
