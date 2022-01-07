
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int maxoff; int flags; } ;
struct TYPE_13__ {scalar_t__ isBuild; } ;
struct TYPE_12__ {int off; } ;
struct TYPE_11__ {int key; } ;
typedef int Size ;
typedef TYPE_1__ PostingItem ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_2__ GinBtreeStack ;
typedef TYPE_3__* GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int BufferGetPage (int ) ;
 int FirstOffsetNumber ;
 TYPE_1__* GinDataPageGetPostingItem (int ,int) ;
 int * GinDataPageGetRightBound (int ) ;
 int GinDataPageSetDataSize (int ,int) ;
 int GinInitPage (int ,int ,int ) ;
 int GinNonLeafDataPageGetFreeSpace (int ) ;
 TYPE_9__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageRightMost (int ) ;
 int PageGetPageSize (int ) ;
 int PageGetTempPage (int ) ;
 int PostingItemSetBlockNumber (TYPE_1__*,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void
dataSplitPageInternal(GinBtree btree, Buffer origbuf,
       GinBtreeStack *stack,
       void *insertdata, BlockNumber updateblkno,
       Page *newlpage, Page *newrpage)
{
 Page oldpage = BufferGetPage(origbuf);
 OffsetNumber off = stack->off;
 int nitems = GinPageGetOpaque(oldpage)->maxoff;
 int nleftitems;
 int nrightitems;
 Size pageSize = PageGetPageSize(oldpage);
 ItemPointerData oldbound = *GinDataPageGetRightBound(oldpage);
 ItemPointer bound;
 Page lpage;
 Page rpage;
 OffsetNumber separator;
 PostingItem allitems[(BLCKSZ / sizeof(PostingItem)) + 1];

 lpage = PageGetTempPage(oldpage);
 rpage = PageGetTempPage(oldpage);
 GinInitPage(lpage, GinPageGetOpaque(oldpage)->flags, pageSize);
 GinInitPage(rpage, GinPageGetOpaque(oldpage)->flags, pageSize);





 memcpy(allitems, GinDataPageGetPostingItem(oldpage, FirstOffsetNumber),
     (off - 1) * sizeof(PostingItem));

 allitems[off - 1] = *((PostingItem *) insertdata);
 memcpy(&allitems[off], GinDataPageGetPostingItem(oldpage, off),
     (nitems - (off - 1)) * sizeof(PostingItem));
 nitems++;


 PostingItemSetBlockNumber(&allitems[off], updateblkno);






 if (btree->isBuild && GinPageRightMost(oldpage))
  separator = GinNonLeafDataPageGetFreeSpace(rpage) / sizeof(PostingItem);
 else
  separator = nitems / 2;
 nleftitems = separator;
 nrightitems = nitems - separator;

 memcpy(GinDataPageGetPostingItem(lpage, FirstOffsetNumber),
     allitems,
     nleftitems * sizeof(PostingItem));
 GinPageGetOpaque(lpage)->maxoff = nleftitems;
 memcpy(GinDataPageGetPostingItem(rpage, FirstOffsetNumber),
     &allitems[separator],
     nrightitems * sizeof(PostingItem));
 GinPageGetOpaque(rpage)->maxoff = nrightitems;




 GinDataPageSetDataSize(lpage, nleftitems * sizeof(PostingItem));
 GinDataPageSetDataSize(rpage, nrightitems * sizeof(PostingItem));


 bound = GinDataPageGetRightBound(lpage);
 *bound = GinDataPageGetPostingItem(lpage, nleftitems)->key;


 *GinDataPageGetRightBound(rpage) = oldbound;


 *newlpage = lpage;
 *newrpage = rpage;
}
