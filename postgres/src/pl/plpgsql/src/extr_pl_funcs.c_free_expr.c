
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * plan; } ;
typedef TYPE_1__ PLpgSQL_expr ;


 int SPI_freeplan (int *) ;

__attribute__((used)) static void
free_expr(PLpgSQL_expr *expr)
{
 if (expr && expr->plan)
 {
  SPI_freeplan(expr->plan);
  expr->plan = ((void*)0);
 }
}
