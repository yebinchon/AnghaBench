
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int query; int body; } ;
typedef TYPE_1__ PLpgSQL_stmt_fors ;


 int free_expr (int ) ;
 int free_stmts (int ) ;

__attribute__((used)) static void
free_fors(PLpgSQL_stmt_fors *stmt)
{
 free_stmts(stmt->body);
 free_expr(stmt->query);
}
