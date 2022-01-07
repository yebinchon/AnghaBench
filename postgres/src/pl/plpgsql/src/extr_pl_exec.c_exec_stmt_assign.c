
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * datums; } ;
struct TYPE_6__ {size_t varno; int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_assign ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int Assert (int) ;
 int PLPGSQL_RC_OK ;
 int exec_assign_expr (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
exec_stmt_assign(PLpgSQL_execstate *estate, PLpgSQL_stmt_assign *stmt)
{
 Assert(stmt->varno >= 0);

 exec_assign_expr(estate, estate->datums[stmt->varno], stmt->expr);

 return PLPGSQL_RC_OK;
}
