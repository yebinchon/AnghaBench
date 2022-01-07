
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int funcname; int context; } ;
struct TYPE_7__ {int (* evalfunc ) (TYPE_1__*,int *,int*) ;TYPE_3__* evalfunc_private; } ;
typedef int (* ExprStateEvalFunc ) (TYPE_1__*,int *,int*) ;
typedef TYPE_1__ ExprState ;
typedef int ExprContext ;
typedef int Datum ;
typedef TYPE_3__ CompiledExprState ;


 int Assert (int (*) (TYPE_1__*,int *,int*)) ;
 int CheckExprStillValid (TYPE_1__*,int *) ;
 int llvm_enter_fatal_on_oom () ;
 scalar_t__ llvm_get_function (int ,int ) ;
 int llvm_leave_fatal_on_oom () ;

__attribute__((used)) static Datum
ExecRunCompiledExpr(ExprState *state, ExprContext *econtext, bool *isNull)
{
 CompiledExprState *cstate = state->evalfunc_private;
 ExprStateEvalFunc func;

 CheckExprStillValid(state, econtext);

 llvm_enter_fatal_on_oom();
 func = (ExprStateEvalFunc) llvm_get_function(cstate->context,
             cstate->funcname);
 llvm_leave_fatal_on_oom();
 Assert(func);


 state->evalfunc = func;

 return func(state, econtext, isNull);
}
