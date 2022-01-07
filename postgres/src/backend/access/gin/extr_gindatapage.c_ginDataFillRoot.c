
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* key; } ;
typedef TYPE_1__ PostingItem ;
typedef int Page ;
typedef int GinBtree ;
typedef int BlockNumber ;


 int GinDataPageAddPostingItem (int ,TYPE_1__*,int ) ;
 void** GinDataPageGetRightBound (int ) ;
 int InvalidOffsetNumber ;
 int PostingItemSetBlockNumber (TYPE_1__*,int ) ;

void
ginDataFillRoot(GinBtree btree, Page root, BlockNumber lblkno, Page lpage, BlockNumber rblkno, Page rpage)
{
 PostingItem li,
    ri;

 li.key = *GinDataPageGetRightBound(lpage);
 PostingItemSetBlockNumber(&li, lblkno);
 GinDataPageAddPostingItem(root, &li, InvalidOffsetNumber);

 ri.key = *GinDataPageGetRightBound(rpage);
 PostingItemSetBlockNumber(&ri, rblkno);
 GinDataPageAddPostingItem(root, &ri, InvalidOffsetNumber);
}
