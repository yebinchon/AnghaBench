
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_set ;


 int free_expr (int ) ;

__attribute__((used)) static void
free_set(PLpgSQL_stmt_set *stmt)
{
 free_expr(stmt->expr);
}
