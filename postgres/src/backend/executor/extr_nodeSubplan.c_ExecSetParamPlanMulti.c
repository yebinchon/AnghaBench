
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ecxt_param_exec_vals; } ;
struct TYPE_5__ {int * execPlan; } ;
typedef TYPE_1__ ParamExecData ;
typedef TYPE_2__ ExprContext ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int ExecSetParamPlan (int *,TYPE_2__*) ;
 int bms_next_member (int const*,int) ;

void
ExecSetParamPlanMulti(const Bitmapset *params, ExprContext *econtext)
{
 int paramid;

 paramid = -1;
 while ((paramid = bms_next_member(params, paramid)) >= 0)
 {
  ParamExecData *prm = &(econtext->ecxt_param_exec_vals[paramid]);

  if (prm->execPlan != ((void*)0))
  {

   ExecSetParamPlan(prm->execPlan, econtext);

   Assert(prm->execPlan == ((void*)0));
  }
 }
}
