
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body; int cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_while ;


 int free_expr (int ) ;
 int free_stmts (int ) ;

__attribute__((used)) static void
free_while(PLpgSQL_stmt_while *stmt)
{
 free_expr(stmt->cond);
 free_stmts(stmt->body);
}
