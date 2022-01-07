
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int ERROR ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int MAXALIGN (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,int ,int,int) ;
 int RelationGetRelationName (int ) ;
 int _hash_binsearch (int ,int ) ;
 int _hash_checkpage (int ,int ,int) ;
 int _hash_get_indextuple_hashkey (scalar_t__) ;
 int elog (int ,char*,int ) ;

void
_hash_pgaddmultitup(Relation rel, Buffer buf, IndexTuple *itups,
     OffsetNumber *itup_offsets, uint16 nitups)
{
 OffsetNumber itup_off;
 Page page;
 uint32 hashkey;
 int i;

 _hash_checkpage(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
 page = BufferGetPage(buf);

 for (i = 0; i < nitups; i++)
 {
  Size itemsize;

  itemsize = IndexTupleSize(itups[i]);
  itemsize = MAXALIGN(itemsize);


  hashkey = _hash_get_indextuple_hashkey(itups[i]);
  itup_off = _hash_binsearch(page, hashkey);

  itup_offsets[i] = itup_off;

  if (PageAddItem(page, (Item) itups[i], itemsize, itup_off, 0, 0)
   == InvalidOffsetNumber)
   elog(ERROR, "failed to add index item to \"%s\"",
     RelationGetRelationName(rel));
 }
}
