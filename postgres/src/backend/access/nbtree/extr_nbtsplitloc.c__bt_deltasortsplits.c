
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double int16 ;
struct TYPE_6__ {int nsplits; TYPE_1__* splits; } ;
struct TYPE_5__ {double leftfree; double rightfree; double curdelta; } ;
typedef TYPE_1__ SplitPoint ;
typedef TYPE_2__ FindSplitData ;


 int _bt_splitcmp ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void
_bt_deltasortsplits(FindSplitData *state, double fillfactormult,
     bool usemult)
{
 for (int i = 0; i < state->nsplits; i++)
 {
  SplitPoint *split = state->splits + i;
  int16 delta;

  if (usemult)
   delta = fillfactormult * split->leftfree -
    (1.0 - fillfactormult) * split->rightfree;
  else
   delta = split->leftfree - split->rightfree;

  if (delta < 0)
   delta = -delta;


  split->curdelta = delta;
 }

 qsort(state->splits, state->nsplits, sizeof(SplitPoint), _bt_splitcmp);
}
