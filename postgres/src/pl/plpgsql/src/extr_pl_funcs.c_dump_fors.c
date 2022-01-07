
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int body; int query; TYPE_1__* var; } ;
struct TYPE_4__ {char* refname; } ;
typedef TYPE_2__ PLpgSQL_stmt_fors ;


 int dump_expr (int ) ;
 int dump_ind () ;
 int dump_stmts (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_fors(PLpgSQL_stmt_fors *stmt)
{
 dump_ind();
 printf("FORS %s ", stmt->var->refname);
 dump_expr(stmt->query);
 printf("\n");

 dump_stmts(stmt->body);

 dump_ind();
 printf("    ENDFORS\n");
}
