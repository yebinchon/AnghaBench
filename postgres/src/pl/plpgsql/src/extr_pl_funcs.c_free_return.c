
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_return ;


 int free_expr (int ) ;

__attribute__((used)) static void
free_return(PLpgSQL_stmt_return *stmt)
{
 free_expr(stmt->expr);
}
