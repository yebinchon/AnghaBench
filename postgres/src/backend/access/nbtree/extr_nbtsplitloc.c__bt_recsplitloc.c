
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_5__ {scalar_t__ newitemoff; scalar_t__ leftspace; int rightspace; int olddataitemstotal; size_t nsplits; size_t maxsplits; TYPE_1__* splits; int minfirstrightsz; scalar_t__ is_leaf; scalar_t__ newitemsz; } ;
struct TYPE_4__ {int newitemonleft; scalar_t__ firstoldonright; scalar_t__ rightfree; scalar_t__ leftfree; scalar_t__ curdelta; } ;
typedef scalar_t__ Size ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemIdData ;
typedef int IndexTupleData ;
typedef TYPE_2__ FindSplitData ;


 int Assert (int) ;
 scalar_t__ MAXALIGN (int) ;
 int Min (int ,scalar_t__) ;

__attribute__((used)) static void
_bt_recsplitloc(FindSplitData *state,
    OffsetNumber firstoldonright,
    bool newitemonleft,
    int olddataitemstoleft,
    Size firstoldonrightsz)
{
 int16 leftfree,
    rightfree;
 Size firstrightitemsz;
 bool newitemisfirstonright;


 newitemisfirstonright = (firstoldonright == state->newitemoff
        && !newitemonleft);

 if (newitemisfirstonright)
  firstrightitemsz = state->newitemsz;
 else
  firstrightitemsz = firstoldonrightsz;


 leftfree = state->leftspace - olddataitemstoleft;
 rightfree = state->rightspace -
  (state->olddataitemstotal - olddataitemstoleft);
 if (state->is_leaf)
  leftfree -= (int16) (firstrightitemsz +
        MAXALIGN(sizeof(ItemPointerData)));
 else
  leftfree -= (int16) firstrightitemsz;


 if (newitemonleft)
  leftfree -= (int16) state->newitemsz;
 else
  rightfree -= (int16) state->newitemsz;





 if (!state->is_leaf)
  rightfree += (int16) firstrightitemsz -
   (int16) (MAXALIGN(sizeof(IndexTupleData)) + sizeof(ItemIdData));


 if (leftfree >= 0 && rightfree >= 0)
 {
  Assert(state->nsplits < state->maxsplits);


  state->minfirstrightsz = Min(state->minfirstrightsz, firstrightitemsz);

  state->splits[state->nsplits].curdelta = 0;
  state->splits[state->nsplits].leftfree = leftfree;
  state->splits[state->nsplits].rightfree = rightfree;
  state->splits[state->nsplits].firstoldonright = firstoldonright;
  state->splits[state->nsplits].newitemonleft = newitemonleft;
  state->nsplits++;
 }
}
