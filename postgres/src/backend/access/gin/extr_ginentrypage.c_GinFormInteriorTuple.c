
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int t_info; } ;
typedef int Page ;
typedef TYPE_1__* IndexTuple ;
typedef int BlockNumber ;


 int GinGetPostingOffset (TYPE_1__*) ;
 int GinIsPostingTree (TYPE_1__*) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int GinSetDownlink (TYPE_1__*,int ) ;
 int INDEX_SIZE_MASK ;
 int IndexTupleSize (TYPE_1__*) ;
 int MAXALIGN (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ palloc (int ) ;

__attribute__((used)) static IndexTuple
GinFormInteriorTuple(IndexTuple itup, Page page, BlockNumber childblk)
{
 IndexTuple nitup;

 if (GinPageIsLeaf(page) && !GinIsPostingTree(itup))
 {

  uint32 origsize = GinGetPostingOffset(itup);

  origsize = MAXALIGN(origsize);
  nitup = (IndexTuple) palloc(origsize);
  memcpy(nitup, itup, origsize);

  nitup->t_info &= ~INDEX_SIZE_MASK;
  nitup->t_info |= origsize;
 }
 else
 {

  nitup = (IndexTuple) palloc(IndexTupleSize(itup));
  memcpy(nitup, itup, IndexTupleSize(itup));
 }


 GinSetDownlink(nitup, childblk);

 return nitup;
}
