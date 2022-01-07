
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * message; int * cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_assert ;


 int dump_expr (int *) ;
 int dump_ind () ;
 int dump_indent ;
 int printf (char*) ;

__attribute__((used)) static void
dump_assert(PLpgSQL_stmt_assert *stmt)
{
 dump_ind();
 printf("ASSERT ");
 dump_expr(stmt->cond);
 printf("\n");

 dump_indent += 2;
 if (stmt->message != ((void*)0))
 {
  dump_ind();
  printf("    MESSAGE = ");
  dump_expr(stmt->message);
  printf("\n");
 }
 dump_indent -= 2;
}
