
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64 ;
typedef TYPE_3__* WindowObject ;
struct TYPE_12__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;
struct TYPE_15__ {int spooled_rows; int currentpos; int * temp_slot_1; TYPE_2__ ss; } ;
typedef TYPE_4__ WindowAggState ;
typedef int TupleTableSlot ;
struct TYPE_16__ {int * ecxt_outertuple; } ;
struct TYPE_14__ {int argstates; TYPE_4__* winstate; } ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef int Datum ;


 int Assert (int ) ;
 int ERROR ;
 int ExecEvalExpr (int *,TYPE_5__*,int*) ;



 int WinSetMarkPosition (TYPE_3__*,int) ;
 int WindowObjectIsValid (TYPE_3__*) ;
 int elog (int ,char*,int) ;
 scalar_t__ list_nth (int ,int) ;
 int spool_tuples (TYPE_4__*,int) ;
 int window_gettupleslot (TYPE_3__*,int,int *) ;

Datum
WinGetFuncArgInPartition(WindowObject winobj, int argno,
       int relpos, int seektype, bool set_mark,
       bool *isnull, bool *isout)
{
 WindowAggState *winstate;
 ExprContext *econtext;
 TupleTableSlot *slot;
 bool gottuple;
 int64 abs_pos;

 Assert(WindowObjectIsValid(winobj));
 winstate = winobj->winstate;
 econtext = winstate->ss.ps.ps_ExprContext;
 slot = winstate->temp_slot_1;

 switch (seektype)
 {
  case 130:
   abs_pos = winstate->currentpos + relpos;
   break;
  case 129:
   abs_pos = relpos;
   break;
  case 128:
   spool_tuples(winstate, -1);
   abs_pos = winstate->spooled_rows - 1 + relpos;
   break;
  default:
   elog(ERROR, "unrecognized window seek type: %d", seektype);
   abs_pos = 0;
   break;
 }

 gottuple = window_gettupleslot(winobj, abs_pos, slot);

 if (!gottuple)
 {
  if (isout)
   *isout = 1;
  *isnull = 1;
  return (Datum) 0;
 }
 else
 {
  if (isout)
   *isout = 0;
  if (set_mark)
   WinSetMarkPosition(winobj, abs_pos);
  econtext->ecxt_outertuple = slot;
  return ExecEvalExpr((ExprState *) list_nth(winobj->argstates, argno),
       econtext, isnull);
 }
}
