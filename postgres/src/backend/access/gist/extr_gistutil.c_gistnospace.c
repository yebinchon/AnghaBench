
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemIdData ;
typedef int IndexTuple ;


 int IndexTupleSize (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 unsigned int PageGetFreeSpace (int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;

bool
gistnospace(Page page, IndexTuple *itvec, int len, OffsetNumber todelete, Size freespace)
{
 unsigned int size = freespace,
    deleted = 0;
 int i;

 for (i = 0; i < len; i++)
  size += IndexTupleSize(itvec[i]) + sizeof(ItemIdData);

 if (todelete != InvalidOffsetNumber)
 {
  IndexTuple itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, todelete));

  deleted = IndexTupleSize(itup) + sizeof(ItemIdData);
 }

 return (PageGetFreeSpace(page) + deleted < size);
}
