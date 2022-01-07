
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ retvarno; int * expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_return ;


 int dump_expr (int *) ;
 int dump_ind () ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_return(PLpgSQL_stmt_return *stmt)
{
 dump_ind();
 printf("RETURN ");
 if (stmt->retvarno >= 0)
  printf("variable %d", stmt->retvarno);
 else if (stmt->expr != ((void*)0))
  dump_expr(stmt->expr);
 else
  printf("NULL");
 printf("\n");
}
