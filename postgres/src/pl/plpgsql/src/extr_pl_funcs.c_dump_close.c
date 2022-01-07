
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curvar; } ;
typedef TYPE_1__ PLpgSQL_stmt_close ;


 int dump_ind () ;
 int printf (char*,int) ;

__attribute__((used)) static void
dump_close(PLpgSQL_stmt_close *stmt)
{
 dump_ind();
 printf("CLOSE curvar=%d\n", stmt->curvar);
}
