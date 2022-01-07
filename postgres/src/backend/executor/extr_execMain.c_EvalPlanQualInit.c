
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int epqParam; int * relsubs_done; int * relsubs_rowmark; int * recheckplanstate; int * recheckestate; int * origslot; int * arowMarks; int * plan; int ** relsubs_slot; int tuple_table; TYPE_1__* parentestate; } ;
struct TYPE_5__ {int es_range_table_size; } ;
typedef int Plan ;
typedef int List ;
typedef int Index ;
typedef TYPE_1__ EState ;
typedef TYPE_2__ EPQState ;


 int NIL ;
 scalar_t__ palloc0 (int) ;

void
EvalPlanQualInit(EPQState *epqstate, EState *parentestate,
     Plan *subplan, List *auxrowmarks, int epqParam)
{
 Index rtsize = parentestate->es_range_table_size;


 epqstate->parentestate = parentestate;
 epqstate->epqParam = epqParam;
 epqstate->tuple_table = NIL;
 epqstate->relsubs_slot = (TupleTableSlot **)
  palloc0(rtsize * sizeof(TupleTableSlot *));


 epqstate->plan = subplan;
 epqstate->arowMarks = auxrowmarks;


 epqstate->origslot = ((void*)0);
 epqstate->recheckestate = ((void*)0);
 epqstate->recheckplanstate = ((void*)0);
 epqstate->relsubs_rowmark = ((void*)0);
 epqstate->relsubs_done = ((void*)0);
}
