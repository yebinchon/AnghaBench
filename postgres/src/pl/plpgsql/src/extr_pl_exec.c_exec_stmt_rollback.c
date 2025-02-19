
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * simple_eval_estate; } ;
struct TYPE_6__ {scalar_t__ chain; } ;
typedef TYPE_1__ PLpgSQL_stmt_rollback ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int PLPGSQL_RC_OK ;
 int SPI_rollback () ;
 int SPI_rollback_and_chain () ;
 int SPI_start_transaction () ;
 int plpgsql_create_econtext (TYPE_2__*) ;

__attribute__((used)) static int
exec_stmt_rollback(PLpgSQL_execstate *estate, PLpgSQL_stmt_rollback *stmt)
{
 if (stmt->chain)
  SPI_rollback_and_chain();
 else
 {
  SPI_rollback();
  SPI_start_transaction();
 }

 estate->simple_eval_estate = ((void*)0);
 plpgsql_create_econtext(estate);

 return PLPGSQL_RC_OK;
}
