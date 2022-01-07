
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ecxt_callbacks; int ecxt_per_tuple_memory; } ;
struct TYPE_5__ {int arg; int (* function ) (int ) ;struct TYPE_5__* next; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ExprContext_CB ;
typedef TYPE_2__ ExprContext ;


 int MemoryContextSwitchTo (int ) ;
 int pfree (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
ShutdownExprContext(ExprContext *econtext, bool isCommit)
{
 ExprContext_CB *ecxt_callback;
 MemoryContext oldcontext;


 if (econtext->ecxt_callbacks == ((void*)0))
  return;





 oldcontext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);




 while ((ecxt_callback = econtext->ecxt_callbacks) != ((void*)0))
 {
  econtext->ecxt_callbacks = ecxt_callback->next;
  if (isCommit)
   ecxt_callback->function(ecxt_callback->arg);
  pfree(ecxt_callback);
 }

 MemoryContextSwitchTo(oldcontext);
}
