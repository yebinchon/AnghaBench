
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int subroot; } ;
struct TYPE_8__ {void* qual; void* targetlist; } ;
struct TYPE_9__ {int scanrelid; TYPE_1__ plan; } ;
struct TYPE_10__ {TYPE_2__ scan; int subplan; } ;
typedef TYPE_3__ SubqueryScan ;
typedef TYPE_4__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Plan ;


 int * clean_up_removed_plan_level (int *,int ) ;
 TYPE_4__* find_base_rel (int *,int) ;
 void* fix_scan_list (int *,void*,int) ;
 int set_plan_references (int ,int ) ;
 scalar_t__ trivial_subqueryscan (TYPE_3__*) ;

__attribute__((used)) static Plan *
set_subqueryscan_references(PlannerInfo *root,
       SubqueryScan *plan,
       int rtoffset)
{
 RelOptInfo *rel;
 Plan *result;


 rel = find_base_rel(root, plan->scan.scanrelid);


 plan->subplan = set_plan_references(rel->subroot, plan->subplan);

 if (trivial_subqueryscan(plan))
 {



  result = clean_up_removed_plan_level((Plan *) plan, plan->subplan);
 }
 else
 {







  plan->scan.scanrelid += rtoffset;
  plan->scan.plan.targetlist =
   fix_scan_list(root, plan->scan.plan.targetlist, rtoffset);
  plan->scan.plan.qual =
   fix_scan_list(root, plan->scan.plan.qual, rtoffset);

  result = (Plan *) plan;
 }

 return result;
}
