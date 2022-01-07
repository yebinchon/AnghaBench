
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
struct TYPE_12__ {int frameOptions; int frametail_valid; int frametailpos; int spooled_rows; int currentpos; scalar_t__ currentgroup; scalar_t__ frametailgroup; int temp_slot_2; int frametail_slot; int buffer; int frametail_ptr; int endOffsetValue; int inRangeColl; int endInRangeFunc; scalar_t__ inRangeNullsFirst; TYPE_3__ ss; int inRangeAsc; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_13__ {int ordNumCols; int* ordColIdx; } ;
typedef TYPE_5__ WindowAgg ;
struct TYPE_9__ {int ecxt_per_query_memory; } ;
typedef int MemoryContext ;
typedef int Datum ;


 int Assert (int) ;
 int BoolGetDatum (int) ;
 int DatumGetBool (int ) ;
 scalar_t__ DatumGetInt64 (int ) ;
 int ERROR ;
 int ExecClearTuple (int ) ;
 int ExecCopySlot (int ,int ) ;
 int FRAMEOPTION_END_CURRENT_ROW ;
 int FRAMEOPTION_END_OFFSET ;
 int FRAMEOPTION_END_OFFSET_PRECEDING ;
 int FRAMEOPTION_END_UNBOUNDED_FOLLOWING ;
 int FRAMEOPTION_GROUPS ;
 int FRAMEOPTION_RANGE ;
 int FRAMEOPTION_ROWS ;
 int FunctionCall5Coll (int *,int ,int ,int ,int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TupIsNull (int ) ;
 int are_peers (TYPE_4__*,int ,int ) ;
 int elog (int ,char*) ;
 int slot_getattr (int ,int,int*) ;
 int spool_tuples (TYPE_4__*,int) ;
 int tuplestore_gettupleslot (int ,int,int,int ) ;
 int tuplestore_select_read_pointer (int ,int ) ;

__attribute__((used)) static void
update_frametailpos(WindowAggState *winstate)
{
 WindowAgg *node = (WindowAgg *) winstate->ss.ps.plan;
 int frameOptions = winstate->frameOptions;
 MemoryContext oldcontext;

 if (winstate->frametail_valid)
  return;


 oldcontext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

 if (frameOptions & FRAMEOPTION_END_UNBOUNDED_FOLLOWING)
 {

  spool_tuples(winstate, -1);
  winstate->frametailpos = winstate->spooled_rows;
  winstate->frametail_valid = 1;
 }
 else if (frameOptions & FRAMEOPTION_END_CURRENT_ROW)
 {
  if (frameOptions & FRAMEOPTION_ROWS)
  {

   winstate->frametailpos = winstate->currentpos + 1;
   winstate->frametail_valid = 1;
  }
  else if (frameOptions & (FRAMEOPTION_RANGE | FRAMEOPTION_GROUPS))
  {

   if (node->ordNumCols == 0)
   {
    spool_tuples(winstate, -1);
    winstate->frametailpos = winstate->spooled_rows;
    winstate->frametail_valid = 1;
    MemoryContextSwitchTo(oldcontext);
    return;
   }
   tuplestore_select_read_pointer(winstate->buffer,
             winstate->frametail_ptr);
   if (winstate->frametailpos == 0 &&
    TupIsNull(winstate->frametail_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->frametail_slot))
   {
    if (winstate->frametailpos > winstate->currentpos &&
     !are_peers(winstate, winstate->frametail_slot,
          winstate->ss.ss_ScanTupleSlot))
     break;

    winstate->frametailpos++;
    spool_tuples(winstate, winstate->frametailpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     break;
   }
   winstate->frametail_valid = 1;
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

   winstate->frametailpos = winstate->currentpos + offset + 1;

   if (winstate->frametailpos < 0)
    winstate->frametailpos = 0;
   else if (winstate->frametailpos > winstate->currentpos + 1)
   {

    spool_tuples(winstate, winstate->frametailpos - 1);
    if (winstate->frametailpos > winstate->spooled_rows)
     winstate->frametailpos = winstate->spooled_rows;
   }
   winstate->frametail_valid = 1;
  }
  else if (frameOptions & FRAMEOPTION_RANGE)
  {
   int sortCol = node->ordColIdx[0];
   bool sub,
      less;


   Assert(node->ordNumCols == 1);


   if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
    sub = 1;
   else
    sub = 0;
   less = 1;

   if (!winstate->inRangeAsc)
   {
    sub = !sub;
    less = 0;
   }

   tuplestore_select_read_pointer(winstate->buffer,
             winstate->frametail_ptr);
   if (winstate->frametailpos == 0 &&
    TupIsNull(winstate->frametail_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->frametail_slot))
   {
    Datum tailval,
       currval;
    bool tailisnull,
       currisnull;

    tailval = slot_getattr(winstate->frametail_slot, sortCol,
            &tailisnull);
    currval = slot_getattr(winstate->ss.ss_ScanTupleSlot, sortCol,
            &currisnull);
    if (tailisnull || currisnull)
    {

     if (winstate->inRangeNullsFirst)
     {

      if (!tailisnull)
       break;
     }
     else
     {

      if (!currisnull)
       break;
     }
    }
    else
    {
     if (!DatumGetBool(FunctionCall5Coll(&winstate->endInRangeFunc,
              winstate->inRangeColl,
              tailval,
              currval,
              winstate->endOffsetValue,
              BoolGetDatum(sub),
              BoolGetDatum(less))))
      break;
    }

    winstate->frametailpos++;
    spool_tuples(winstate, winstate->frametailpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     break;
   }
   winstate->frametail_valid = 1;
  }
  else if (frameOptions & FRAMEOPTION_GROUPS)
  {
   int64 offset = DatumGetInt64(winstate->endOffsetValue);
   int64 maxtailgroup;

   if (frameOptions & FRAMEOPTION_END_OFFSET_PRECEDING)
    maxtailgroup = winstate->currentgroup - offset;
   else
    maxtailgroup = winstate->currentgroup + offset;

   tuplestore_select_read_pointer(winstate->buffer,
             winstate->frametail_ptr);
   if (winstate->frametailpos == 0 &&
    TupIsNull(winstate->frametail_slot))
   {

    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     elog(ERROR, "unexpected end of tuplestore");
   }

   while (!TupIsNull(winstate->frametail_slot))
   {
    if (winstate->frametailgroup > maxtailgroup)
     break;
    ExecCopySlot(winstate->temp_slot_2, winstate->frametail_slot);

    winstate->frametailpos++;
    spool_tuples(winstate, winstate->frametailpos);
    if (!tuplestore_gettupleslot(winstate->buffer, 1, 1,
            winstate->frametail_slot))
     break;
    if (!are_peers(winstate, winstate->temp_slot_2,
          winstate->frametail_slot))
     winstate->frametailgroup++;
   }
   ExecClearTuple(winstate->temp_slot_2);
   winstate->frametail_valid = 1;
  }
  else
   Assert(0);
 }
 else
  Assert(0);

 MemoryContextSwitchTo(oldcontext);
}
