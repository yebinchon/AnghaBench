
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_query_cxt; } ;
typedef int MemoryContext ;
typedef int List ;
typedef int ExprState ;
typedef int Expr ;
typedef TYPE_1__ EState ;


 int * ExecInitQual (int *,int *) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ expression_planner (int *) ;

ExprState *
ExecPrepareQual(List *qual, EState *estate)
{
 ExprState *result;
 MemoryContext oldcontext;

 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);

 qual = (List *) expression_planner((Expr *) qual);

 result = ExecInitQual(qual, ((void*)0));

 MemoryContextSwitchTo(oldcontext);

 return result;
}
