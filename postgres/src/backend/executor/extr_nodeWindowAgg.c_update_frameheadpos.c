
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_10__ {TYPE_1__* ps_ExprContext; scalar_t__ plan; } ;
struct TYPE_11__ {int ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_12__ {int frameOptions; int framehead_valid; scalar_t__ frameheadpos; scalar_t__ currentpos; scalar_t__ spooled_rows; scalar_t__ currentgroup; scalar_t__ frameheadgroup; int temp_slot_2; int framehead_slot; int buffer; int framehead_ptr; int startOffsetValue; int inRangeColl; int startInRangeFunc; scalar_t__ inRangeNullsFirst; TYPE_3__ ss; int inRangeAsc; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_13__ {int ordNumCols; int* ordColIdx; } ;
typedef TYPE_5__ WindowAgg ;
struct TYPE_9__ {int ecxt_per_query_memory; } ;
typedef int MemoryContext ;
typedef int Datum ;


 int Assert (int) ;
 int BoolGetDatum (int) ;
 scalar_t__ DatumGetBool (int ) ;
 scalar_t__ DatumGetInt64 (int ) ;
 int ERROR ;
 int ExecClearTuple (int ) ;
 int ExecCopySlot (int ,int ) ;
 int FRAMEOPTION_GROUPS ;
 int FRAMEOPTION_RANGE ;
 int FRAMEOPTION_ROWS ;
 int FRAMEOPTION_START_CURRENT_ROW ;
 int FRAMEOPTION_START_OFFSET ;
 int FRAMEOPTION_START_OFFSET_PRECEDING ;
 int FRAMEOPTION_START_UNBOUNDED_PRECEDING ;
 int FunctionCall5Coll (int *,int ,int ,int ,int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TupIsNull (int ) ;
 scalar_t__ are_peers (TYPE_4__*,int ,int ) ;
 int elog (int ,char*) ;
 int slot_getattr (int ,int,int*) ;
 int spool_tuples (TYPE_4__*,scalar_t__) ;
 int tuplestore_gettupleslot (int ,int,int,int ) ;
 int tuplestore_select_read_pointer (int ,int ) ;

__attribute__((used)) static void
update_frameheadpos(WindowAggState *winstate)
{
 WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;
 int frameOptions = winstate->frameOptions;
 MemoryContext oldcontext;

 if (winstate->framehead_valid)
  return;


 oldcontext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

 if (frameOptions & FRAMEOPTION_START_UNBOUNDED_PRECEDING)
 {

  winstate->frameheadpos = 0;
  winstate->framehead_valid = 1;
 }
 else if (frameOptions & FRAMEOPTION_START_CURRENT_ROW)
 {
  if (frameOptions & FRAMEOPTION_ROWS)
  {

   winstate->frameheadpos = winstate->currentpos;
   winstate->framehead_valid = 1;
  }
  else if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
  {

   if (node->ordNumCols == 0)
   {
    winstate->frameheadpos = 0;
    winstate->framehead_valid = 1;
    MemoryContextSwitchTo(oldcontext);
    return;
   }
   tuplestore_select_read_pointer(winstate->buffer,
             winstate->framehead_ptr);
   if (winstate->frameheadpos == 0 &&
    TupIsNull(winstate->framehead_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->framehead_slot))
   {
    if (are_peers(winstate, winstate->framehead_slot,
         winstate->ss.ss_ScanTupleSlot))
     break;

    winstate->frameheadpos++;
    spool_tuples(winstate, winstate->frameheadpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     break;
   }
   winstate->framehead_valid = 1;
  }
  else
   Assert(0);
 }
 else if (frameOptions & FRAMEOPTION_START_OFFSET)
 {
  if (frameOptions & FRAMEOPTION_ROWS)
  {

   int64 offset = DatumGetInt64(winstate->startOffsetValue);

   if (frameOptions & FRAMEOPTION_START_OFFSET_PRECEDING)
    offset = -offset;

   winstate->frameheadpos = winstate->currentpos + offset;

   if (winstate->frameheadpos < 0)
    winstate->frameheadpos = 0;
   else if (winstate->frameheadpos > winstate->currentpos + 1)
   {

    spool_tuples(winstate, winstate->frameheadpos - 1);
    if (winstate->frameheadpos > winstate->spooled_rows)
     winstate->frameheadpos = winstate->spooled_rows;
   }
   winstate->framehead_valid = 1;
  }
  else if (frameOptions & FRAMEOPTION_RANGE)
  {
   int sortCol = node->ordColIdx[0];
   bool sub,
      less;


   Assert(node->ordNumCols == 1);


   if (frameOptions & FRAMEOPTION_START_OFFSET_PRECEDING)
    sub = 1;
   else
    sub = 0;
   less = 0;

   if (!winstate->inRangeAsc)
   {
    sub = !sub;
    less = 1;
   }

   tuplestore_select_read_pointer(winstate->buffer,
             winstate->framehead_ptr);
   if (winstate->frameheadpos == 0 &&
    TupIsNull(winstate->framehead_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->framehead_slot))
   {
    Datum headval,
       currval;
    bool headisnull,
       currisnull;

    headval = slot_getattr(winstate->framehead_slot, sortCol,
            &headisnull);
    currval = slot_getattr(winstate->ss.ss_ScanTupleSlot, sortCol,
            &currisnull);
    if (headisnull || currisnull)
    {

     if (winstate->inRangeNullsFirst)
     {

      if (!headisnull || currisnull)
       break;
     }
     else
     {

      if (headisnull || !currisnull)
       break;
     }
    }
    else
    {
     if (DatumGetBool(FunctionCall5Coll(&winstate->startInRangeFunc,
                winstate->inRangeColl,
                headval,
                currval,
                winstate->startOffsetValue,
                BoolGetDatum(sub),
                BoolGetDatum(less))))
      break;
    }

    winstate->frameheadpos++;
    spool_tuples(winstate, winstate->frameheadpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     break;
   }
   winstate->framehead_valid = 1;
  }
  else if (frameOptions & FRAMEOPTION_GROUPS)
  {
   int64 offset = DatumGetInt64(winstate->startOffsetValue);
   int64 minheadgroup;

   if (frameOptions & FRAMEOPTION_START_OFFSET_PRECEDING)
    minheadgroup = winstate->currentgroup - offset;
   else
    minheadgroup = winstate->currentgroup + offset;

   tuplestore_select_read_pointer(winstate->buffer,
             winstate->framehead_ptr);
   if (winstate->frameheadpos == 0 &&
    TupIsNull(winstate->framehead_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->framehead_slot))
   {
    if (winstate->frameheadgroup >= minheadgroup)
     break;
    ExecCopySlot(winstate->temp_slot_2, winstate->framehead_slot);

    winstate->frameheadpos++;
    spool_tuples(winstate, winstate->frameheadpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->framehead_slot))
     break;
    if (!are_peers(winstate, winstate->temp_slot_2,
          winstate->framehead_slot))
     winstate->frameheadgroup++;
   }
   ExecClearTuple(winstate->temp_slot_2);
   winstate->framehead_valid = 1;
  }
  else
   Assert(0);
 }
 else
  Assert(0);

 MemoryContextSwitchTo(oldcontext);
}
