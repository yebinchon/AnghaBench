
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ InvalidOffsetNumber ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 scalar_t__ PageAddItem (int ,int ,int ,int ,int,int) ;
 int RelationGetRelationName (int ) ;
 int _hash_binsearch (int ,int ) ;
 int _hash_checkpage (int ,int ,int) ;
 int _hash_get_indextuple_hashkey (scalar_t__) ;
 int elog (int ,char*,int ) ;

OffsetNumber
_hash_pgaddtup(Relation rel, Buffer buf, Size itemsize, IndexTuple itup)
{
 OffsetNumber itup_off;
 Page page;
 uint32 hashkey;

 _hash_checkpage(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
 page = BufferGetPage(buf);


 hashkey = _hash_get_indextuple_hashkey(itup);
 itup_off = _hash_binsearch(page, hashkey);

 if (PageAddItem(page, (Item) itup, itemsize, itup_off, 0, 0)
  == InvalidOffsetNumber)
  elog(ERROR, "failed to add index item to \"%s\"",
    RelationGetRelationName(rel));

 return itup_off;
}
