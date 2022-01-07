
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int func; TYPE_1__* paramLI; } ;
struct TYPE_8__ {int func; scalar_t__ paramnos; int * plan; } ;
struct TYPE_7__ {void* parserSetupArg; } ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ PLpgSQL_expr ;
typedef TYPE_3__ PLpgSQL_execstate ;


 int Assert (int ) ;

__attribute__((used)) static ParamListInfo
setup_param_list(PLpgSQL_execstate *estate, PLpgSQL_expr *expr)
{
 ParamListInfo paramLI;





 Assert(expr->plan != ((void*)0));







 if (expr->paramnos)
 {

  paramLI = estate->paramLI;






  paramLI->parserSetupArg = (void *) expr;






  expr->func = estate->func;
 }
 else
 {





  paramLI = ((void*)0);
 }
 return paramLI;
}
