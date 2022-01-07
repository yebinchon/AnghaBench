
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int es_query_cxt; } ;
struct TYPE_4__ {scalar_t__ operation; int planstate; TYPE_2__* estate; } ;
typedef TYPE_1__ QueryDesc ;
typedef int MemoryContext ;
typedef TYPE_2__ EState ;


 int Assert (int) ;
 scalar_t__ CMD_SELECT ;
 int ExecReScan (int ) ;
 int MemoryContextSwitchTo (int ) ;

void
ExecutorRewind(QueryDesc *queryDesc)
{
 EState *estate;
 MemoryContext oldcontext;


 Assert(queryDesc != ((void*)0));

 estate = queryDesc->estate;

 Assert(estate != ((void*)0));


 Assert(queryDesc->operation == CMD_SELECT);




 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);




 ExecReScan(queryDesc->planstate);

 MemoryContextSwitchTo(oldcontext);
}
