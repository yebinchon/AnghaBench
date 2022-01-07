
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;


 int FirstOffsetNumber ;
 int OffsetNumberNext (int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__* palloc (int) ;

IndexTuple *
gistextractpage(Page page, int *len )
{
 OffsetNumber i,
    maxoff;
 IndexTuple *itvec;

 maxoff = PageGetMaxOffsetNumber(page);
 *len = maxoff;
 itvec = palloc(sizeof(IndexTuple) * maxoff);
 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
  itvec[i - FirstOffsetNumber] = (IndexTuple) PageGetItem(page, PageGetItemId(page, i));

 return itvec;
}
