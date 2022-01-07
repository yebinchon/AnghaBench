
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* label; int * cond; scalar_t__ is_exit; } ;
typedef TYPE_1__ PLpgSQL_stmt_exit ;


 int dump_expr (int *) ;
 int dump_ind () ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_exit(PLpgSQL_stmt_exit *stmt)
{
 dump_ind();
 printf("%s", stmt->is_exit ? "EXIT" : "CONTINUE");
 if (stmt->label != ((void*)0))
  printf(" label='%s'", stmt->label);
 if (stmt->cond != ((void*)0))
 {
  printf(" WHEN ");
  dump_expr(stmt->cond);
 }
 printf("\n");
}
