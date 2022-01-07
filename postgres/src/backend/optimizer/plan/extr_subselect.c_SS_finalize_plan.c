
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int outer_params; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int Plan ;


 int finalize_plan (TYPE_1__*,int *,int,int ,int *) ;

void
SS_finalize_plan(PlannerInfo *root, Plan *plan)
{

 (void) finalize_plan(root, plan, -1, root->outer_params, ((void*)0));
}
