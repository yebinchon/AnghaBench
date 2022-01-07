
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subquery; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int PlannerGlobal ;


 int QTW_EXAMINE_RTES_BEFORE ;
 int flatten_rtes_walker ;
 int query_tree_walker (int ,int ,void*,int ) ;

__attribute__((used)) static void
flatten_unplanned_rtes(PlannerGlobal *glob, RangeTblEntry *rte)
{

 (void) query_tree_walker(rte->subquery,
        flatten_rtes_walker,
        (void *) glob,
        QTW_EXAMINE_RTES_BEFORE);
}
