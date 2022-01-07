
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int minfirstrightsz; scalar_t__ newitem; int rel; int page; scalar_t__ is_rightmost; int is_leaf; } ;
typedef int SplitPoint ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef int FindSplitStrat ;
typedef TYPE_1__ FindSplitData ;


 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int P_HIKEY ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int SPLIT_DEFAULT ;
 int SPLIT_MANY_DUPLICATES ;
 int SPLIT_SINGLE_VALUE ;
 int _bt_interval_edges (TYPE_1__*,int **,int **) ;
 int _bt_keep_natts_fast (int ,scalar_t__,scalar_t__) ;
 scalar_t__ _bt_split_firstright (TYPE_1__*,int *) ;
 scalar_t__ _bt_split_lastleft (TYPE_1__*,int *) ;

__attribute__((used)) static int
_bt_strategy(FindSplitData *state, SplitPoint *leftpage,
    SplitPoint *rightpage, FindSplitStrat *strategy)
{
 IndexTuple leftmost,
    rightmost;
 SplitPoint *leftinterval,
      *rightinterval;
 int perfectpenalty;
 int indnkeyatts = IndexRelationGetNumberOfKeyAttributes(state->rel);


 *strategy = SPLIT_DEFAULT;







 if (!state->is_leaf)
  return state->minfirstrightsz;





 _bt_interval_edges(state, &leftinterval, &rightinterval);
 leftmost = _bt_split_lastleft(state, leftinterval);
 rightmost = _bt_split_firstright(state, rightinterval);






 perfectpenalty = _bt_keep_natts_fast(state->rel, leftmost, rightmost);
 if (perfectpenalty <= indnkeyatts)
  return perfectpenalty;
 leftmost = _bt_split_lastleft(state, leftpage);
 rightmost = _bt_split_firstright(state, rightpage);







 perfectpenalty = _bt_keep_natts_fast(state->rel, leftmost, rightmost);
 if (perfectpenalty <= indnkeyatts)
 {
  *strategy = SPLIT_MANY_DUPLICATES;
  return indnkeyatts;
 }
 else if (state->is_rightmost)
  *strategy = SPLIT_SINGLE_VALUE;
 else
 {
  ItemId itemid;
  IndexTuple hikey;

  itemid = PageGetItemId(state->page, P_HIKEY);
  hikey = (IndexTuple) PageGetItem(state->page, itemid);
  perfectpenalty = _bt_keep_natts_fast(state->rel, hikey,
            state->newitem);
  if (perfectpenalty <= indnkeyatts)
   *strategy = SPLIT_SINGLE_VALUE;
  else
  {





  }
 }

 return perfectpenalty;
}
