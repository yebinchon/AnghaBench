
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_perform ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int printf (char*) ;

__attribute__((used)) static void
dump_perform(PLpgSQL_stmt_perform *stmt)
{
 dump_ind();
 printf("PERFORM expr = ");
 dump_expr(stmt->expr);
 printf("\n");
}
