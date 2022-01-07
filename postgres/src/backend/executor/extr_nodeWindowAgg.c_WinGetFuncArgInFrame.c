
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ int64 ;
typedef TYPE_3__* WindowObject ;
struct TYPE_15__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_16__ {TYPE_1__ ps; } ;
struct TYPE_18__ {int frameOptions; scalar_t__ frameheadpos; scalar_t__ groupheadpos; scalar_t__ currentpos; scalar_t__ frametailpos; scalar_t__ grouptailpos; int * temp_slot_1; TYPE_2__ ss; } ;
typedef TYPE_4__ WindowAggState ;
typedef int TupleTableSlot ;
struct TYPE_19__ {int * ecxt_outertuple; } ;
struct TYPE_17__ {int argstates; TYPE_4__* winstate; } ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef int Datum ;


 int Assert (int ) ;
 int ERROR ;
 int ExecEvalExpr (int *,TYPE_5__*,int*) ;



 int FRAMEOPTION_EXCLUSION ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;



 int WinSetMarkPosition (TYPE_3__*,scalar_t__) ;
 int WindowObjectIsValid (TYPE_3__*) ;
 int elog (int ,char*,...) ;
 scalar_t__ list_nth (int ,int) ;
 scalar_t__ row_is_in_frame (TYPE_4__*,scalar_t__,int *) ;
 int update_frameheadpos (TYPE_4__*) ;
 int update_frametailpos (TYPE_4__*) ;
 int update_grouptailpos (TYPE_4__*) ;
 int window_gettupleslot (TYPE_3__*,scalar_t__,int *) ;

Datum
WinGetFuncArgInFrame(WindowObject winobj, int argno,
      int relpos, int seektype, bool set_mark,
      bool *isnull, bool *isout)
{
 WindowAggState *winstate;
 ExprContext *econtext;
 TupleTableSlot *slot;
 int64 abs_pos;
 int64 mark_pos;

 Assert(WindowObjectIsValid(winobj));
 winstate = winobj->winstate;
 econtext = winstate->ss.ps.ps_ExprContext;
 slot = winstate->temp_slot_1;

 switch (seektype)
 {
  case 130:
   elog(ERROR, "WINDOW_SEEK_CURRENT is not supported for WinGetFuncArgInFrame");
   abs_pos = mark_pos = 0;
   break;
  case 129:

   if (relpos < 0)
    goto out_of_frame;
   update_frameheadpos(winstate);
   abs_pos = winstate->frameheadpos + relpos;
   mark_pos = abs_pos;
   switch (winstate->frameOptions & FRAMEOPTION_EXCLUSION)
   {
    case 0:

     break;
    case 133:
     if (abs_pos >= winstate->currentpos &&
      winstate->currentpos >= winstate->frameheadpos)
      abs_pos++;
     break;
    case 132:
     update_grouptailpos(winstate);
     if (abs_pos >= winstate->groupheadpos &&
      winstate->grouptailpos > winstate->frameheadpos)
     {
      int64 overlapstart = Max(winstate->groupheadpos,
                winstate->frameheadpos);

      abs_pos += winstate->grouptailpos - overlapstart;
     }
     break;
    case 131:
     update_grouptailpos(winstate);
     if (abs_pos >= winstate->groupheadpos &&
      winstate->grouptailpos > winstate->frameheadpos)
     {
      int64 overlapstart = Max(winstate->groupheadpos,
                winstate->frameheadpos);

      if (abs_pos == overlapstart)
       abs_pos = winstate->currentpos;
      else
       abs_pos += winstate->grouptailpos - overlapstart - 1;
     }
     break;
    default:
     elog(ERROR, "unrecognized frame option state: 0x%x",
       winstate->frameOptions);
     break;
   }
   break;
  case 128:

   if (relpos > 0)
    goto out_of_frame;
   update_frametailpos(winstate);
   abs_pos = winstate->frametailpos - 1 + relpos;
   switch (winstate->frameOptions & FRAMEOPTION_EXCLUSION)
   {
    case 0:

     mark_pos = abs_pos;
     break;
    case 133:
     if (abs_pos <= winstate->currentpos &&
      winstate->currentpos < winstate->frametailpos)
      abs_pos--;
     update_frameheadpos(winstate);
     if (abs_pos < winstate->frameheadpos)
      goto out_of_frame;
     mark_pos = winstate->frameheadpos;
     break;
    case 132:
     update_grouptailpos(winstate);
     if (abs_pos < winstate->grouptailpos &&
      winstate->groupheadpos < winstate->frametailpos)
     {
      int64 overlapend = Min(winstate->grouptailpos,
              winstate->frametailpos);

      abs_pos -= overlapend - winstate->groupheadpos;
     }
     update_frameheadpos(winstate);
     if (abs_pos < winstate->frameheadpos)
      goto out_of_frame;
     mark_pos = winstate->frameheadpos;
     break;
    case 131:
     update_grouptailpos(winstate);
     if (abs_pos < winstate->grouptailpos &&
      winstate->groupheadpos < winstate->frametailpos)
     {
      int64 overlapend = Min(winstate->grouptailpos,
              winstate->frametailpos);

      if (abs_pos == overlapend - 1)
       abs_pos = winstate->currentpos;
      else
       abs_pos -= overlapend - 1 - winstate->groupheadpos;
     }
     update_frameheadpos(winstate);
     if (abs_pos < winstate->frameheadpos)
      goto out_of_frame;
     mark_pos = winstate->frameheadpos;
     break;
    default:
     elog(ERROR, "unrecognized frame option state: 0x%x",
       winstate->frameOptions);
     mark_pos = 0;
     break;
   }
   break;
  default:
   elog(ERROR, "unrecognized window seek type: %d", seektype);
   abs_pos = mark_pos = 0;
   break;
 }

 if (!window_gettupleslot(winobj, abs_pos, slot))
  goto out_of_frame;


 if (row_is_in_frame(winstate, abs_pos, slot) <= 0)
  goto out_of_frame;

 if (isout)
  *isout = 0;
 if (set_mark)
  WinSetMarkPosition(winobj, mark_pos);
 econtext->ecxt_outertuple = slot;
 return ExecEvalExpr((ExprState *) list_nth(winobj->argstates, argno),
      econtext, isnull);

out_of_frame:
 if (isout)
  *isout = 1;
 *isnull = 1;
 return (Datum) 0;
}
