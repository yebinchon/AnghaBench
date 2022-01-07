
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body; int step; int upper; int lower; } ;
typedef TYPE_1__ PLpgSQL_stmt_fori ;


 int free_expr (int ) ;
 int free_stmts (int ) ;

__attribute__((used)) static void
free_fori(PLpgSQL_stmt_fori *stmt)
{
 free_expr(stmt->lower);
 free_expr(stmt->upper);
 free_expr(stmt->step);
 free_stmts(stmt->body);
}
