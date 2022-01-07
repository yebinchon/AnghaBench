
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ newitemoff; int newitemsz; int rel; int page; int is_leaf; } ;
struct TYPE_9__ {scalar_t__ firstoldonright; int newitemonleft; } ;
typedef TYPE_1__ SplitPoint ;
typedef int ItemIdData ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ FindSplitData ;


 int Assert (int) ;
 int ItemIdGetLength (int ) ;
 int MAXALIGN (int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 int _bt_keep_natts_fast (int ,scalar_t__,scalar_t__) ;
 scalar_t__ _bt_split_firstright (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ _bt_split_lastleft (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static inline int
_bt_split_penalty(FindSplitData *state, SplitPoint *split)
{
 IndexTuple lastleftuple;
 IndexTuple firstrighttuple;

 if (!state->is_leaf)
 {
  ItemId itemid;

  if (!split->newitemonleft &&
   split->firstoldonright == state->newitemoff)
   return state->newitemsz;

  itemid = PageGetItemId(state->page, split->firstoldonright);

  return MAXALIGN(ItemIdGetLength(itemid)) + sizeof(ItemIdData);
 }

 lastleftuple = _bt_split_lastleft(state, split);
 firstrighttuple = _bt_split_firstright(state, split);

 Assert(lastleftuple != firstrighttuple);
 return _bt_keep_natts_fast(state->rel, lastleftuple, firstrighttuple);
}
