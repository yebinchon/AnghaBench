
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int at_params; int at_relid; int at_relname; int at_nspname; } ;
typedef TYPE_1__ autovac_table ;
typedef int VacuumRelation ;
typedef int RangeVar ;
typedef int List ;
typedef int BufferAccessStrategy ;


 int NIL ;
 int autovac_report_activity (TYPE_1__*) ;
 int * list_make1 (int *) ;
 int * makeRangeVar (int ,int ,int) ;
 int * makeVacuumRelation (int *,int ,int ) ;
 int vacuum (int *,int *,int ,int) ;

__attribute__((used)) static void
autovacuum_do_vac_analyze(autovac_table *tab, BufferAccessStrategy bstrategy)
{
 RangeVar *rangevar;
 VacuumRelation *rel;
 List *rel_list;


 autovac_report_activity(tab);


 rangevar = makeRangeVar(tab->at_nspname, tab->at_relname, -1);
 rel = makeVacuumRelation(rangevar, tab->at_relid, NIL);
 rel_list = list_make1(rel);

 vacuum(rel_list, &tab->at_params, bstrategy, 1);
}
