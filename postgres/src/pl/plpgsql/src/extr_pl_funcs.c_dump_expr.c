
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* query; } ;
typedef TYPE_1__ PLpgSQL_expr ;


 int printf (char*,char*) ;

__attribute__((used)) static void
dump_expr(PLpgSQL_expr *expr)
{
 printf("'%s'", expr->query);
}
