
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * es_per_tuple_exprcontext; } ;
typedef int ExprContext ;
typedef TYPE_1__ EState ;


 int * CreateExprContext (TYPE_1__*) ;

ExprContext *
MakePerTupleExprContext(EState *estate)
{
 if (estate->es_per_tuple_exprcontext == ((void*)0))
  estate->es_per_tuple_exprcontext = CreateExprContext(estate);

 return estate->es_per_tuple_exprcontext;
}
