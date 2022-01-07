
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int curvar; int body; int * argquery; TYPE_1__* var; } ;
struct TYPE_4__ {char* refname; } ;
typedef TYPE_2__ PLpgSQL_stmt_forc ;


 int dump_expr (int *) ;
 int dump_ind () ;
 int dump_indent ;
 int dump_stmts (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_forc(PLpgSQL_stmt_forc *stmt)
{
 dump_ind();
 printf("FORC %s ", stmt->var->refname);
 printf("curvar=%d\n", stmt->curvar);

 dump_indent += 2;
 if (stmt->argquery != ((void*)0))
 {
  dump_ind();
  printf("  arguments = ");
  dump_expr(stmt->argquery);
  printf("\n");
 }
 dump_indent -= 2;

 dump_stmts(stmt->body);

 dump_ind();
 printf("    ENDFORC\n");
}
