
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Page ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int GinBtree ;
typedef int BlockNumber ;


 int ERROR ;
 scalar_t__ GinFormInteriorTuple (int ,int ,int ) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 int elog (int ,char*) ;
 int getRightMostTuple (int ) ;
 int pfree (scalar_t__) ;

void
ginEntryFillRoot(GinBtree btree, Page root,
     BlockNumber lblkno, Page lpage,
     BlockNumber rblkno, Page rpage)
{
 IndexTuple itup;

 itup = GinFormInteriorTuple(getRightMostTuple(lpage), lpage, lblkno);
 if (PageAddItem(root, (Item) itup, IndexTupleSize(itup), InvalidOffsetNumber, 0, 0) == InvalidOffsetNumber)
  elog(ERROR, "failed to add item to index root page");
 pfree(itup);

 itup = GinFormInteriorTuple(getRightMostTuple(rpage), rpage, rblkno);
 if (PageAddItem(root, (Item) itup, IndexTupleSize(itup), InvalidOffsetNumber, 0, 0) == InvalidOffsetNumber)
  elog(ERROR, "failed to add item to index root page");
 pfree(itup);
}
