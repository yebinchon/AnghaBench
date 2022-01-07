
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* evalfunc ) (TYPE_1__*,int *,int*) ;scalar_t__ evalfunc_private; } ;
typedef int (* ExprStateEvalFunc ) (TYPE_1__*,int *,int*) ;
typedef TYPE_1__ ExprState ;
typedef int ExprContext ;
typedef int Datum ;


 int CheckExprStillValid (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,int *,int*) ;

Datum
ExecInterpExprStillValid(ExprState *state, ExprContext *econtext, bool *isNull)
{




 CheckExprStillValid(state, econtext);


 state->evalfunc = (ExprStateEvalFunc) state->evalfunc_private;


 return state->evalfunc(state, econtext, isNull);
}
