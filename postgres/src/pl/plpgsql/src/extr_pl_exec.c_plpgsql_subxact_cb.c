
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xact_subxid; struct TYPE_4__* next; int stack_econtext; } ;
typedef scalar_t__ SubXactEvent ;
typedef scalar_t__ SubTransactionId ;
typedef TYPE_1__ SimpleEcontextStackEntry ;


 int FreeExprContext (int ,int) ;
 scalar_t__ SUBXACT_EVENT_ABORT_SUB ;
 scalar_t__ SUBXACT_EVENT_COMMIT_SUB ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* simple_econtext_stack ;

void
plpgsql_subxact_cb(SubXactEvent event, SubTransactionId mySubid,
       SubTransactionId parentSubid, void *arg)
{
 if (event == SUBXACT_EVENT_COMMIT_SUB || event == SUBXACT_EVENT_ABORT_SUB)
 {
  while (simple_econtext_stack != ((void*)0) &&
      simple_econtext_stack->xact_subxid == mySubid)
  {
   SimpleEcontextStackEntry *next;

   FreeExprContext(simple_econtext_stack->stack_econtext,
       (event == SUBXACT_EVENT_COMMIT_SUB));
   next = simple_econtext_stack->next;
   pfree(simple_econtext_stack);
   simple_econtext_stack = next;
  }
 }
}
