
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_10__ {scalar_t__ plan; } ;
struct TYPE_11__ {TYPE_1__ ps; int ss_ScanTupleSlot; } ;
struct TYPE_12__ {int frameOptions; scalar_t__ frameheadpos; scalar_t__ currentpos; scalar_t__ frametailpos; scalar_t__ groupheadpos; scalar_t__ grouptailpos; TYPE_2__ ss; int endOffsetValue; } ;
typedef TYPE_3__ WindowAggState ;
struct TYPE_13__ {scalar_t__ ordNumCols; } ;
typedef TYPE_4__ WindowAgg ;
typedef int TupleTableSlot ;


 int Assert (int) ;
 scalar_t__ DatumGetInt64 (int ) ;
 int FRAMEOPTION_END_CURRENT_ROW ;
 int FRAMEOPTION_END_OFFSET ;
 int FRAMEOPTION_END_OFFSET_PRECEDING ;
 int FRAMEOPTION_EXCLUDE_CURRENT_ROW ;
 int FRAMEOPTION_EXCLUDE_GROUP ;
 int FRAMEOPTION_EXCLUDE_TIES ;
 int FRAMEOPTION_GROUPS ;
 int FRAMEOPTION_RANGE ;
 int FRAMEOPTION_ROWS ;
 int are_peers (TYPE_3__*,int *,int ) ;
 int update_frameheadpos (TYPE_3__*) ;
 int update_frametailpos (TYPE_3__*) ;
 int update_grouptailpos (TYPE_3__*) ;

__attribute__((used)) static int
row_is_in_frame(WindowAggState *winstate, int64 pos, TupleTableSlot *slot)
{
 int frameOptions = winstate->frameOptions;

 Assert(pos >= 0);





 update_frameheadpos(winstate);
 if (pos < winstate->frameheadpos)
  return 0;






 if (frameOptions & FRAMEOPTION_END_CURRENT_ROW)
 {
  if (frameOptions & FRAMEOPTION_ROWS)
  {

   if (pos > winstate->currentpos)
    return -1;
  }
  else if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
  {

   if (pos > winstate->currentpos &&
    !are_peers(winstate, slot, winstate->ss.ss_ScanTupleSlot))
    return -1;
  }
  else
   Assert(0);
 }
 else if (frameOptions & FRAMEOPTION_END_OFFSET)
 {
  if (frameOptions & FRAMEOPTION_ROWS)
  {
   int64 offset = DatumGetInt64(winstate->endOffsetValue);


   if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
    offset = -offset;

   if (pos > winstate->currentpos + offset)
    return -1;
  }
  else if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
  {

   update_frametailpos(winstate);
   if (pos >= winstate->frametailpos)
    return -1;
  }
  else
   Assert(0);
 }


 if (frameOptions & FRAMEOPTION_EXCLUDE_CURRENT_ROW)
 {
  if (pos == winstate->currentpos)
   return 0;
 }
 else if ((frameOptions & FRAMEOPTION_EXCLUDE_GROUP) ||
    ((frameOptions & FRAMEOPTION_EXCLUDE_TIES) &&
     pos != winstate->currentpos))
 {
  WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;


  if (node->ordNumCols == 0)
   return 0;

  if (pos >= winstate->groupheadpos)
  {
   update_grouptailpos(winstate);
   if (pos < winstate->grouptailpos)
    return 0;
  }
 }


 return 1;
}
