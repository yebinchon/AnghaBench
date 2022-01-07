
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ newitemoff; int page; int newitem; } ;
struct TYPE_5__ {scalar_t__ firstoldonright; int newitemonleft; } ;
typedef TYPE_1__ SplitPoint ;
typedef int ItemId ;
typedef int IndexTuple ;
typedef TYPE_2__ FindSplitData ;


 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;

__attribute__((used)) static inline IndexTuple
_bt_split_firstright(FindSplitData *state, SplitPoint *split)
{
 ItemId itemid;

 if (!split->newitemonleft && split->firstoldonright == state->newitemoff)
  return state->newitem;

 itemid = PageGetItemId(state->page, split->firstoldonright);
 return (IndexTuple) PageGetItem(state->page, itemid);
}
