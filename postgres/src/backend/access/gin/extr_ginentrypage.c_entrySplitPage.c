
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {int index; } ;
struct TYPE_14__ {scalar_t__ entry; } ;
struct TYPE_13__ {scalar_t__ off; } ;
struct TYPE_12__ {char* data; } ;
struct TYPE_11__ {int flags; } ;
typedef int Size ;
typedef int Page ;
typedef TYPE_1__ PGAlignedBlock ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemIdData ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ GinBtreeStack ;
typedef TYPE_3__ GinBtreeEntryInsertData ;
typedef TYPE_4__* GinBtree ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GinInitPage (int ,int ,int) ;
 TYPE_10__* GinPageGetOpaque (int ) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 int MAXALIGN (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageGetPageSize (int ) ;
 int PageGetTempPageCopy (int ) ;
 int RelationGetRelationName (int ) ;
 int elog (int ,char*,int ) ;
 int entryPreparePage (TYPE_4__*,int ,scalar_t__,TYPE_3__*,int ) ;
 int memcpy (char*,scalar_t__,int) ;

__attribute__((used)) static void
entrySplitPage(GinBtree btree, Buffer origbuf,
      GinBtreeStack *stack,
      GinBtreeEntryInsertData *insertData,
      BlockNumber updateblkno,
      Page *newlpage, Page *newrpage)
{
 OffsetNumber off = stack->off;
 OffsetNumber i,
    maxoff,
    separator = InvalidOffsetNumber;
 Size totalsize = 0;
 Size lsize = 0,
    size;
 char *ptr;
 IndexTuple itup;
 Page page;
 Page lpage = PageGetTempPageCopy(BufferGetPage(origbuf));
 Page rpage = PageGetTempPageCopy(BufferGetPage(origbuf));
 Size pageSize = PageGetPageSize(lpage);
 PGAlignedBlock tupstore[2];

 entryPreparePage(btree, lpage, off, insertData, updateblkno);





 maxoff = PageGetMaxOffsetNumber(lpage);
 ptr = tupstore[0].data;
 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  if (i == off)
  {
   size = MAXALIGN(IndexTupleSize(insertData->entry));
   memcpy(ptr, insertData->entry, size);
   ptr += size;
   totalsize += size + sizeof(ItemIdData);
  }

  itup = (IndexTuple) PageGetItem(lpage, PageGetItemId(lpage, i));
  size = MAXALIGN(IndexTupleSize(itup));
  memcpy(ptr, itup, size);
  ptr += size;
  totalsize += size + sizeof(ItemIdData);
 }

 if (off == maxoff + 1)
 {
  size = MAXALIGN(IndexTupleSize(insertData->entry));
  memcpy(ptr, insertData->entry, size);
  ptr += size;
  totalsize += size + sizeof(ItemIdData);
 }





 GinInitPage(rpage, GinPageGetOpaque(lpage)->flags, pageSize);
 GinInitPage(lpage, GinPageGetOpaque(rpage)->flags, pageSize);

 ptr = tupstore[0].data;
 maxoff++;
 lsize = 0;

 page = lpage;
 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  itup = (IndexTuple) ptr;





  if (lsize > totalsize / 2)
  {
   if (separator == InvalidOffsetNumber)
    separator = i - 1;
   page = rpage;
  }
  else
  {
   lsize += MAXALIGN(IndexTupleSize(itup)) + sizeof(ItemIdData);
  }

  if (PageAddItem(page, (Item) itup, IndexTupleSize(itup), InvalidOffsetNumber, 0, 0) == InvalidOffsetNumber)
   elog(ERROR, "failed to add item to index page in \"%s\"",
     RelationGetRelationName(btree->index));
  ptr += MAXALIGN(IndexTupleSize(itup));
 }


 *newlpage = lpage;
 *newrpage = rpage;
}
