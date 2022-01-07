
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * eval_econtext; int * eval_tuptable; } ;
typedef TYPE_1__ PLpgSQL_execstate ;


 int ResetExprContext (int *) ;
 int SPI_freetuptable (int *) ;

__attribute__((used)) static void
exec_eval_cleanup(PLpgSQL_execstate *estate)
{

 if (estate->eval_tuptable != ((void*)0))
  SPI_freetuptable(estate->eval_tuptable);
 estate->eval_tuptable = ((void*)0);





 if (estate->eval_econtext != ((void*)0))
  ResetExprContext(estate->eval_econtext);
}
