
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64 ;
typedef int int16 ;
struct TYPE_8__ {int t_tid; } ;
struct TYPE_7__ {int newitemoff; int newitemsz; int minfirstrightsz; int olddataitemstotal; TYPE_4__* newitem; int rel; int page; int is_rightmost; scalar_t__ is_leaf; } ;
struct TYPE_6__ {int t_tid; } ;
typedef int OffsetNumber ;
typedef int ItemIdData ;
typedef int ItemId ;
typedef int IndexTupleData ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ FindSplitData ;


 int Assert (int) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int MAXALIGN (int) ;
 int OffsetNumberPrev (int) ;
 int P_FIRSTKEY ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int) ;
 int _bt_adjacenthtid (int *,int *) ;
 int _bt_keep_natts_fast (int ,TYPE_1__*,TYPE_4__*) ;

__attribute__((used)) static bool
_bt_afternewitemoff(FindSplitData *state, OffsetNumber maxoff,
     int leaffillfactor, bool *usemult)
{
 int16 nkeyatts;
 ItemId itemid;
 IndexTuple tup;
 int keepnatts;

 Assert(state->is_leaf && !state->is_rightmost);

 nkeyatts = IndexRelationGetNumberOfKeyAttributes(state->rel);


 if (nkeyatts == 1)
  return 0;


 if (state->newitemoff == P_FIRSTKEY)
  return 0;
 if (state->newitemsz != state->minfirstrightsz)
  return 0;
 if (state->newitemsz * (maxoff - 1) != state->olddataitemstotal)
  return 0;






 if (state->newitemsz >
  MAXALIGN(sizeof(IndexTupleData) + sizeof(int64) * 2) +
  sizeof(ItemIdData))
  return 0;
 if (state->newitemoff > maxoff)
 {
  itemid = PageGetItemId(state->page, maxoff);
  tup = (IndexTuple) PageGetItem(state->page, itemid);
  keepnatts = _bt_keep_natts_fast(state->rel, tup, state->newitem);

  if (keepnatts > 1 && keepnatts <= nkeyatts)
  {
   *usemult = 1;
   return 1;
  }

  return 0;
 }
 itemid = PageGetItemId(state->page, OffsetNumberPrev(state->newitemoff));
 tup = (IndexTuple) PageGetItem(state->page, itemid);

 if (!_bt_adjacenthtid(&tup->t_tid, &state->newitem->t_tid))
  return 0;

 keepnatts = _bt_keep_natts_fast(state->rel, tup, state->newitem);

 if (keepnatts > 1 && keepnatts <= nkeyatts)
 {
  double interp = (double) state->newitemoff / ((double) maxoff + 1);
  double leaffillfactormult = (double) leaffillfactor / 100.0;






  *usemult = interp > leaffillfactormult;

  return 1;
 }

 return 0;
}
