
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ newitemoff; TYPE_1__* splits; int is_rightmost; int nsplits; int interval; } ;
struct TYPE_6__ {int newitemonleft; scalar_t__ firstoldonright; } ;
typedef TYPE_1__ SplitPoint ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ FindSplitStrat ;
typedef TYPE_2__ FindSplitData ;


 int INT_MAX ;
 scalar_t__ MAX_LEAF_INTERVAL ;
 int Min (int ,int ) ;
 scalar_t__ SPLIT_MANY_DUPLICATES ;
 int _bt_split_penalty (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static OffsetNumber
_bt_bestsplitloc(FindSplitData *state, int perfectpenalty,
     bool *newitemonleft, FindSplitStrat strategy)
{
 int bestpenalty,
    lowsplit;
 int highsplit = Min(state->interval, state->nsplits);
 SplitPoint *final;

 bestpenalty = INT_MAX;
 lowsplit = 0;
 for (int i = lowsplit; i < highsplit; i++)
 {
  int penalty;

  penalty = _bt_split_penalty(state, state->splits + i);

  if (penalty <= perfectpenalty)
  {
   bestpenalty = penalty;
   lowsplit = i;
   break;
  }

  if (penalty < bestpenalty)
  {
   bestpenalty = penalty;
   lowsplit = i;
  }
 }

 final = &state->splits[lowsplit];
 if (strategy == SPLIT_MANY_DUPLICATES && !state->is_rightmost &&
  !final->newitemonleft && final->firstoldonright >= state->newitemoff &&
  final->firstoldonright < state->newitemoff + MAX_LEAF_INTERVAL)
 {




  final = &state->splits[0];
 }

 *newitemonleft = final->newitemonleft;
 return final->firstoldonright;
}
