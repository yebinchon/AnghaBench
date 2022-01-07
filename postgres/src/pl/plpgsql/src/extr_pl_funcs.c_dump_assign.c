
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int varno; int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_assign ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_assign(PLpgSQL_stmt_assign *stmt)
{
 dump_ind();
 printf("ASSIGN var %d := ", stmt->varno);
 dump_expr(stmt->expr);
 printf("\n");
}
