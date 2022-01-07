
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body; int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_foreach_a ;


 int free_expr (int ) ;
 int free_stmts (int ) ;

__attribute__((used)) static void
free_foreach_a(PLpgSQL_stmt_foreach_a *stmt)
{
 free_expr(stmt->expr);
 free_stmts(stmt->body);
}
