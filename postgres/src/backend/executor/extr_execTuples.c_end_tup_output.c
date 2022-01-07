
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slot; TYPE_2__* dest; } ;
typedef TYPE_1__ TupOutputState ;
struct TYPE_6__ {int (* rShutdown ) (TYPE_2__*) ;} ;


 int ExecDropSingleTupleTableSlot (int ) ;
 int pfree (TYPE_1__*) ;
 int stub1 (TYPE_2__*) ;

void
end_tup_output(TupOutputState *tstate)
{
 tstate->dest->rShutdown(tstate->dest);

 ExecDropSingleTupleTableSlot(tstate->slot);
 pfree(tstate);
}
