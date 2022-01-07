
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int targetlist; int initPlan; } ;
typedef TYPE_1__ Plan ;


 int apply_tlist_labeling (int ,int ) ;
 int list_concat (int ,int ) ;

__attribute__((used)) static Plan *
clean_up_removed_plan_level(Plan *parent, Plan *child)
{

 child->initPlan = list_concat(parent->initPlan,
          child->initPlan);






 apply_tlist_labeling(child->targetlist, parent->targetlist);

 return child;
}
