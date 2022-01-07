
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExprState ;


 int ExecReadyInterpretedExpr (int *) ;
 scalar_t__ jit_compile_expr (int *) ;

__attribute__((used)) static void
ExecReadyExpr(ExprState *state)
{
 if (jit_compile_expr(state))
  return;

 ExecReadyInterpretedExpr(state);
}
