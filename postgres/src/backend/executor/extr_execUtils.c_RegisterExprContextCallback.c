
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ecxt_callbacks; int ecxt_per_query_memory; } ;
struct TYPE_4__ {struct TYPE_4__* next; int arg; int function; } ;
typedef TYPE_1__ ExprContext_CB ;
typedef int ExprContextCallbackFunction ;
typedef TYPE_2__ ExprContext ;
typedef int Datum ;


 scalar_t__ MemoryContextAlloc (int ,int) ;

void
RegisterExprContextCallback(ExprContext *econtext,
       ExprContextCallbackFunction function,
       Datum arg)
{
 ExprContext_CB *ecxt_callback;


 ecxt_callback = (ExprContext_CB *)
  MemoryContextAlloc(econtext->ecxt_per_query_memory,
         sizeof(ExprContext_CB));

 ecxt_callback->function = function;
 ecxt_callback->arg = arg;


 ecxt_callback->next = econtext->ecxt_callbacks;
 econtext->ecxt_callbacks = ecxt_callback;
}
