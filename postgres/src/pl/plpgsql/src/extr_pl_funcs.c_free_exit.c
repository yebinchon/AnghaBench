
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_exit ;


 int free_expr (int ) ;

__attribute__((used)) static void
free_exit(PLpgSQL_stmt_exit *stmt)
{
 free_expr(stmt->cond);
}
