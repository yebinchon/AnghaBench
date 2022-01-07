
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ecxt_callbacks; } ;
struct TYPE_5__ {scalar_t__ function; scalar_t__ arg; struct TYPE_5__* next; } ;
typedef TYPE_1__ ExprContext_CB ;
typedef scalar_t__ ExprContextCallbackFunction ;
typedef TYPE_2__ ExprContext ;
typedef scalar_t__ Datum ;


 int pfree (TYPE_1__*) ;

void
UnregisterExprContextCallback(ExprContext *econtext,
         ExprContextCallbackFunction function,
         Datum arg)
{
 ExprContext_CB **prev_callback;
 ExprContext_CB *ecxt_callback;

 prev_callback = &econtext->ecxt_callbacks;

 while ((ecxt_callback = *prev_callback) != ((void*)0))
 {
  if (ecxt_callback->function == function && ecxt_callback->arg == arg)
  {
   *prev_callback = ecxt_callback->next;
   pfree(ecxt_callback);
  }
  else
   prev_callback = &ecxt_callback->next;
 }
}
