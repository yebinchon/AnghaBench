
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Page ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;


 int Assert (int ) ;
 int FirstOffsetNumber ;
 int OffsetNumberIsValid (int) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ _hash_get_indextuple_hashkey (scalar_t__) ;

OffsetNumber
_hash_binsearch(Page page, uint32 hash_value)
{
 OffsetNumber upper;
 OffsetNumber lower;


 upper = PageGetMaxOffsetNumber(page) + 1;
 lower = FirstOffsetNumber;

 while (upper > lower)
 {
  OffsetNumber off;
  IndexTuple itup;
  uint32 hashkey;

  off = (upper + lower) / 2;
  Assert(OffsetNumberIsValid(off));

  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, off));
  hashkey = _hash_get_indextuple_hashkey(itup);
  if (hashkey < hash_value)
   lower = off + 1;
  else
   upper = off;
 }

 return lower;
}
