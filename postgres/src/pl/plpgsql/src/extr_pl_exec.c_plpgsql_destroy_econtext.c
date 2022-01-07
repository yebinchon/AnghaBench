
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * eval_econtext; } ;
struct TYPE_6__ {struct TYPE_6__* next; int * stack_econtext; } ;
typedef TYPE_1__ SimpleEcontextStackEntry ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int Assert (int) ;
 int FreeExprContext (int *,int) ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* simple_econtext_stack ;

__attribute__((used)) static void
plpgsql_destroy_econtext(PLpgSQL_execstate *estate)
{
 SimpleEcontextStackEntry *next;

 Assert(simple_econtext_stack != ((void*)0));
 Assert(simple_econtext_stack->stack_econtext == estate->eval_econtext);

 next = simple_econtext_stack->next;
 pfree(simple_econtext_stack);
 simple_econtext_stack = next;

 FreeExprContext(estate->eval_econtext, 1);
 estate->eval_econtext = ((void*)0);
}
