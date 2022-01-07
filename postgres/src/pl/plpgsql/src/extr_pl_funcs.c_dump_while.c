
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body; int cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_while ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int dump_stmts (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
dump_while(PLpgSQL_stmt_while *stmt)
{
 dump_ind();
 printf("WHILE ");
 dump_expr(stmt->cond);
 printf("\n");

 dump_stmts(stmt->body);

 dump_ind();
 printf("    ENDWHILE\n");
}
