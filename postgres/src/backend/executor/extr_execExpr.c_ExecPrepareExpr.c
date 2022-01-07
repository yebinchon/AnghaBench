
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_query_cxt; } ;
typedef int MemoryContext ;
typedef int ExprState ;
typedef int Expr ;
typedef TYPE_1__ EState ;


 int * ExecInitExpr (int *,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * expression_planner (int *) ;

ExprState *
ExecPrepareExpr(Expr *node, EState *estate)
{
 ExprState *result;
 MemoryContext oldcontext;

 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);

 node = expression_planner(node);

 result = ExecInitExpr(node, ((void*)0));

 MemoryContextSwitchTo(oldcontext);

 return result;
}
