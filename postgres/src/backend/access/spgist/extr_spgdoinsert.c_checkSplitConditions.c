
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offnum; int page; int blkno; } ;
struct TYPE_4__ {scalar_t__ tupstate; int nextOffset; scalar_t__ size; } ;
typedef int SpGistState ;
typedef TYPE_1__* SpGistLeafTuple ;
typedef TYPE_2__ SPPageDesc ;
typedef int Relation ;
typedef int ItemIdData ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERROR ;
 int FirstOffsetNumber ;
 int InvalidOffsetNumber ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int PageGetMaxOffsetNumber (int ) ;
 scalar_t__ SPGIST_DEAD ;
 scalar_t__ SPGIST_LIVE ;
 scalar_t__ SpGistBlockIsRoot (int ) ;
 int elog (int ,char*,scalar_t__) ;

__attribute__((used)) static int
checkSplitConditions(Relation index, SpGistState *state,
      SPPageDesc *current, int *nToSplit)
{
 int i,
    n = 0,
    totalSize = 0;

 if (SpGistBlockIsRoot(current->blkno))
 {

  *nToSplit = BLCKSZ;
  return BLCKSZ;
 }

 i = current->offnum;
 while (i != InvalidOffsetNumber)
 {
  SpGistLeafTuple it;

  Assert(i >= FirstOffsetNumber &&
      i <= PageGetMaxOffsetNumber(current->page));
  it = (SpGistLeafTuple) PageGetItem(current->page,
             PageGetItemId(current->page, i));
  if (it->tupstate == SPGIST_LIVE)
  {
   n++;
   totalSize += it->size + sizeof(ItemIdData);
  }
  else if (it->tupstate == SPGIST_DEAD)
  {

   Assert(i == current->offnum);
   Assert(it->nextOffset == InvalidOffsetNumber);

  }
  else
   elog(ERROR, "unexpected SPGiST tuple state: %d", it->tupstate);

  i = it->nextOffset;
 }

 *nToSplit = n;

 return totalSize;
}
