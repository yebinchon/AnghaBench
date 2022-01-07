
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chain; } ;
typedef TYPE_1__ PLpgSQL_stmt_commit ;


 int dump_ind () ;
 int printf (char*) ;

__attribute__((used)) static void
dump_commit(PLpgSQL_stmt_commit *stmt)
{
 dump_ind();
 if (stmt->chain)
  printf("COMMIT AND CHAIN\n");
 else
  printf("COMMIT\n");
}
