
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Size ;
typedef int Page ;
typedef scalar_t__ Item ;
typedef int IndexTupleData ;


 int IndexTupleSize (int *) ;
 scalar_t__ InvalidOffsetNumber ;
 int MAXALIGN (int ) ;
 int MaxIndexTuplesPerPage ;
 int PANIC ;
 scalar_t__ PageAddItem (int ,scalar_t__,int ,int,int,int) ;
 int elog (int ,char*) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static void
_bt_restore_page(Page page, char *from, int len)
{
 IndexTupleData itupdata;
 Size itemsz;
 char *end = from + len;
 Item items[MaxIndexTuplesPerPage];
 uint16 itemsizes[MaxIndexTuplesPerPage];
 int i;
 int nitems;






 i = 0;
 while (from < end)
 {







  memcpy(&itupdata, from, sizeof(IndexTupleData));
  itemsz = IndexTupleSize(&itupdata);
  itemsz = MAXALIGN(itemsz);

  items[i] = (Item) from;
  itemsizes[i] = itemsz;
  i++;

  from += itemsz;
 }
 nitems = i;

 for (i = nitems - 1; i >= 0; i--)
 {
  if (PageAddItem(page, items[i], itemsizes[i], nitems - i,
      0, 0) == InvalidOffsetNumber)
   elog(PANIC, "_bt_restore_page: cannot add item to page");
  from += itemsz;
 }
}
