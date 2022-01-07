
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* expr; } ;
struct TYPE_4__ {char* query; } ;
typedef TYPE_2__ PLpgSQL_stmt_set ;


 int dump_ind () ;
 int printf (char*,char*) ;

__attribute__((used)) static void
dump_set(PLpgSQL_stmt_set *stmt)
{
 dump_ind();
 printf("%s\n", stmt->expr->query);
}
