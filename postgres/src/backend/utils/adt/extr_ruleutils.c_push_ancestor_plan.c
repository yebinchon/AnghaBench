
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ancestors; } ;
typedef TYPE_1__ deparse_namespace ;
typedef int PlanState ;
typedef int ListCell ;


 scalar_t__ lfirst (int *) ;
 scalar_t__ list_cell_number (int ,int *) ;
 int list_copy_tail (int ,scalar_t__) ;
 int set_deparse_planstate (TYPE_1__*,int *) ;

__attribute__((used)) static void
push_ancestor_plan(deparse_namespace *dpns, ListCell *ancestor_cell,
       deparse_namespace *save_dpns)
{
 PlanState *ps = (PlanState *) lfirst(ancestor_cell);


 *save_dpns = *dpns;


 dpns->ancestors =
  list_copy_tail(dpns->ancestors,
        list_cell_number(dpns->ancestors, ancestor_cell) + 1);


 set_deparse_planstate(dpns, ps);
}
