
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int eval_econtext; int * simple_eval_estate; } ;
struct TYPE_5__ {struct TYPE_5__* next; int xact_subxid; int stack_econtext; } ;
typedef TYPE_1__ SimpleEcontextStackEntry ;
typedef TYPE_2__ PLpgSQL_execstate ;
typedef int MemoryContext ;


 int * CreateExecutorState () ;
 int CreateExprContext (int *) ;
 int GetCurrentSubTransactionId () ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int TopTransactionContext ;
 int * shared_simple_eval_estate ;
 TYPE_1__* simple_econtext_stack ;

__attribute__((used)) static void
plpgsql_create_econtext(PLpgSQL_execstate *estate)
{
 SimpleEcontextStackEntry *entry;
 if (estate->simple_eval_estate == ((void*)0))
 {
  MemoryContext oldcontext;

  if (shared_simple_eval_estate == ((void*)0))
  {
   oldcontext = MemoryContextSwitchTo(TopTransactionContext);
   shared_simple_eval_estate = CreateExecutorState();
   MemoryContextSwitchTo(oldcontext);
  }
  estate->simple_eval_estate = shared_simple_eval_estate;
 }




 estate->eval_econtext = CreateExprContext(estate->simple_eval_estate);





 entry = (SimpleEcontextStackEntry *)
  MemoryContextAlloc(TopTransactionContext,
         sizeof(SimpleEcontextStackEntry));

 entry->stack_econtext = estate->eval_econtext;
 entry->xact_subxid = GetCurrentSubTransactionId();

 entry->next = simple_econtext_stack;
 simple_econtext_stack = entry;
}
