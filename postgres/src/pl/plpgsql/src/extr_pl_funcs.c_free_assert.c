
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int message; int cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_assert ;


 int free_expr (int ) ;

__attribute__((used)) static void
free_assert(PLpgSQL_stmt_assert *stmt)
{
 free_expr(stmt->cond);
 free_expr(stmt->message);
}
