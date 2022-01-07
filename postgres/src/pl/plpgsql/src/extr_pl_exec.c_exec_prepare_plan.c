
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int func; } ;
struct TYPE_7__ {int rwparam; int * plan; int query; int func; } ;
typedef int * SPIPlanPtr ;
typedef int ParserSetupHook ;
typedef TYPE_1__ PLpgSQL_expr ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int ERROR ;
 int SPI_keepplan (int *) ;
 int * SPI_prepare_params (int ,int ,void*,int) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 int elog (int ,char*,int ,int ) ;
 int exec_simple_check_plan (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ plpgsql_parser_setup ;

__attribute__((used)) static void
exec_prepare_plan(PLpgSQL_execstate *estate,
      PLpgSQL_expr *expr, int cursorOptions,
      bool keepplan)
{
 SPIPlanPtr plan;





 expr->func = estate->func;




 plan = SPI_prepare_params(expr->query,
         (ParserSetupHook) plpgsql_parser_setup,
         (void *) expr,
         cursorOptions);
 if (plan == ((void*)0))
  elog(ERROR, "SPI_prepare_params failed for \"%s\": %s",
    expr->query, SPI_result_code_string(SPI_result));
 if (keepplan)
  SPI_keepplan(plan);
 expr->plan = plan;


 exec_simple_check_plan(estate, expr);






 expr->rwparam = -1;
}
