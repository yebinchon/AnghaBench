
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; scalar_t__ is_call; } ;
typedef TYPE_1__ PLpgSQL_stmt_call ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_call(PLpgSQL_stmt_call *stmt)
{
 dump_ind();
 printf("%s expr = ", stmt->is_call ? "CALL" : "DO");
 dump_expr(stmt->expr);
 printf("\n");
}
