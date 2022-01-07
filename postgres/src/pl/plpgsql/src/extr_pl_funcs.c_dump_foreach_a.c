
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int varno; scalar_t__ slice; int body; int expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_foreach_a ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int dump_stmts (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_foreach_a(PLpgSQL_stmt_foreach_a *stmt)
{
 dump_ind();
 printf("FOREACHA var %d ", stmt->varno);
 if (stmt->slice != 0)
  printf("SLICE %d ", stmt->slice);
 printf("IN ");
 dump_expr(stmt->expr);
 printf("\n");

 dump_stmts(stmt->body);

 dump_ind();
 printf("    ENDFOREACHA");
}
