
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_10__ {scalar_t__ dtype; int dno; } ;
struct TYPE_9__ {int * plan; } ;
typedef TYPE_1__ PLpgSQL_expr ;
typedef int PLpgSQL_execstate ;
typedef TYPE_2__ PLpgSQL_datum ;
typedef int Oid ;
typedef int Datum ;


 scalar_t__ PLPGSQL_DTYPE_VAR ;
 int exec_assign_value (int *,TYPE_2__*,int ,int,int ,int ) ;
 int exec_check_rw_parameter (TYPE_1__*,int ) ;
 int exec_eval_cleanup (int *) ;
 int exec_eval_expr (int *,TYPE_1__*,int*,int *,int *) ;
 int exec_prepare_plan (int *,TYPE_1__*,int ,int) ;

__attribute__((used)) static void
exec_assign_expr(PLpgSQL_execstate *estate, PLpgSQL_datum *target,
     PLpgSQL_expr *expr)
{
 Datum value;
 bool isnull;
 Oid valtype;
 int32 valtypmod;







 if (expr->plan == ((void*)0))
 {
  exec_prepare_plan(estate, expr, 0, 1);
  if (target->dtype == PLPGSQL_DTYPE_VAR)
   exec_check_rw_parameter(expr, target->dno);
 }

 value = exec_eval_expr(estate, expr, &isnull, &valtype, &valtypmod);
 exec_assign_value(estate, target, value, isnull, valtype, valtypmod);
 exec_eval_cleanup(estate);
}
