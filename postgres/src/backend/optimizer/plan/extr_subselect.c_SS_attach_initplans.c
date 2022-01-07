
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int initPlan; } ;
struct TYPE_5__ {int init_plans; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_2__ Plan ;



void
SS_attach_initplans(PlannerInfo *root, Plan *plan)
{
 plan->initPlan = root->init_plans;
}
