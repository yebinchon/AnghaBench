
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t found_varno; scalar_t__* datums; } ;
typedef int PLpgSQL_var ;
typedef TYPE_1__ PLpgSQL_execstate ;


 int BoolGetDatum (int) ;
 int assign_simple_var (TYPE_1__*,int *,int ,int,int) ;

__attribute__((used)) static void
exec_set_found(PLpgSQL_execstate *estate, bool state)
{
 PLpgSQL_var *var;

 var = (PLpgSQL_var *) (estate->datums[estate->found_varno]);
 assign_simple_var(estate, var, BoolGetDatum(state), 0, 0);
}
