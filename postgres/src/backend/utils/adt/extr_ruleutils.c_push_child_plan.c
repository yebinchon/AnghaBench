
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ancestors; int planstate; } ;
typedef TYPE_1__ deparse_namespace ;
typedef int PlanState ;


 int lcons (int ,int ) ;
 int set_deparse_planstate (TYPE_1__*,int *) ;

__attribute__((used)) static void
push_child_plan(deparse_namespace *dpns, PlanState *ps,
    deparse_namespace *save_dpns)
{

 *save_dpns = *dpns;


 dpns->ancestors = lcons(dpns->planstate, dpns->ancestors);


 set_deparse_planstate(dpns, ps);
}
