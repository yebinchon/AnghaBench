
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
typedef int TupleDesc ;
struct TYPE_6__ {TYPE_2__* dest; int slot; } ;
typedef TYPE_1__ TupOutputState ;
struct TYPE_7__ {int (* rStartup ) (TYPE_2__*,int,int ) ;} ;
typedef TYPE_2__ DestReceiver ;


 scalar_t__ CMD_SELECT ;
 int MakeSingleTupleTableSlot (int ,int const*) ;
 scalar_t__ palloc (int) ;
 int stub1 (TYPE_2__*,int,int ) ;

TupOutputState *
begin_tup_output_tupdesc(DestReceiver *dest,
       TupleDesc tupdesc,
       const TupleTableSlotOps *tts_ops)
{
 TupOutputState *tstate;

 tstate = (TupOutputState *) palloc(sizeof(TupOutputState));

 tstate->slot = MakeSingleTupleTableSlot(tupdesc, tts_ops);
 tstate->dest = dest;

 tstate->dest->rStartup(tstate->dest, (int) CMD_SELECT, tupdesc);

 return tstate;
}
