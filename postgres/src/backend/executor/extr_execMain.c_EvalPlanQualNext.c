
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int recheckplanstate; TYPE_1__* recheckestate; } ;
struct TYPE_4__ {int es_query_cxt; } ;
typedef int MemoryContext ;
typedef TYPE_2__ EPQState ;


 int * ExecProcNode (int ) ;
 int MemoryContextSwitchTo (int ) ;

TupleTableSlot *
EvalPlanQualNext(EPQState *epqstate)
{
 MemoryContext oldcontext;
 TupleTableSlot *slot;

 oldcontext = MemoryContextSwitchTo(epqstate->recheckestate->es_query_cxt);
 slot = ExecProcNode(epqstate->recheckplanstate);
 MemoryContextSwitchTo(oldcontext);

 return slot;
}
