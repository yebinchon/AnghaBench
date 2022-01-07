
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;


 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ OffsetNumberNext (int ) ;
 scalar_t__ PageAddItem (int ,int ,scalar_t__,scalar_t__,int,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 int elog (int ,char*,int,int,int) ;

void
gistfillbuffer(Page page, IndexTuple *itup, int len, OffsetNumber off)
{
 OffsetNumber l = InvalidOffsetNumber;
 int i;

 if (off == InvalidOffsetNumber)
  off = (PageIsEmpty(page)) ? FirstOffsetNumber :
   OffsetNumberNext(PageGetMaxOffsetNumber(page));

 for (i = 0; i < len; i++)
 {
  Size sz = IndexTupleSize(itup[i]);

  l = PageAddItem(page, (Item) itup[i], sz, off, 0, 0);
  if (l == InvalidOffsetNumber)
   elog(ERROR, "failed to add item to GiST index page, item %d out of %d, size %d bytes",
     i, len, (int) sz);
  off++;
 }
}
