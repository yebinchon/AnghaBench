
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ExprState ;
typedef int ExprContext ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetBool (int ) ;
 int EEO_FLAG_IS_QUAL ;
 int ExecEvalExprSwitchContext (TYPE_1__*,int *,int*) ;

bool
ExecCheck(ExprState *state, ExprContext *econtext)
{
 Datum ret;
 bool isnull;


 if (state == ((void*)0))
  return 1;


 Assert(!(state->flags & EEO_FLAG_IS_QUAL));

 ret = ExecEvalExprSwitchContext(state, econtext, &isnull);

 if (isnull)
  return 1;

 return DatumGetBool(ret);
}
