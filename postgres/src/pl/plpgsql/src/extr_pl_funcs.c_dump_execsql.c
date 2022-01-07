
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* target; scalar_t__ strict; int sqlstmt; } ;
struct TYPE_4__ {int dno; char* refname; } ;
typedef TYPE_2__ PLpgSQL_stmt_execsql ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int dump_indent ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_execsql(PLpgSQL_stmt_execsql *stmt)
{
 dump_ind();
 printf("EXECSQL ");
 dump_expr(stmt->sqlstmt);
 printf("\n");

 dump_indent += 2;
 if (stmt->target != ((void*)0))
 {
  dump_ind();
  printf("    INTO%s target = %d %s\n",
      stmt->strict ? " STRICT" : "",
      stmt->target->dno, stmt->target->refname);
 }
 dump_indent -= 2;
}
