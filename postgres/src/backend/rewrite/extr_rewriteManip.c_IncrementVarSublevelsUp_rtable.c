
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta_sublevels_up; int min_sublevels_up; } ;
typedef int List ;
typedef TYPE_1__ IncrementVarSublevelsUp_context ;


 int IncrementVarSublevelsUp_walker ;
 int QTW_EXAMINE_RTES_BEFORE ;
 int range_table_walker (int *,int ,void*,int ) ;

void
IncrementVarSublevelsUp_rtable(List *rtable, int delta_sublevels_up,
          int min_sublevels_up)
{
 IncrementVarSublevelsUp_context context;

 context.delta_sublevels_up = delta_sublevels_up;
 context.min_sublevels_up = min_sublevels_up;

 range_table_walker(rtable,
        IncrementVarSublevelsUp_walker,
        (void *) &context,
        QTW_EXAMINE_RTES_BEFORE);
}
