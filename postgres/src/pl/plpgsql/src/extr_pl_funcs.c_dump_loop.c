
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body; } ;
typedef TYPE_1__ PLpgSQL_stmt_loop ;


 int dump_ind () ;
 int dump_stmts (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
dump_loop(PLpgSQL_stmt_loop *stmt)
{
 dump_ind();
 printf("LOOP\n");

 dump_stmts(stmt->body);

 dump_ind();
 printf("    ENDLOOP\n");
}
