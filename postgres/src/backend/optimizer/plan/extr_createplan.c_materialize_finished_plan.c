
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int total_cost; int startup_cost; } ;
struct TYPE_7__ {int parallel_aware; int parallel_safe; int plan_width; int plan_rows; int total_cost; int startup_cost; int initPlan; } ;
typedef TYPE_1__ Plan ;
typedef TYPE_2__ Path ;


 int NIL ;
 int cost_material (TYPE_2__*,int ,int ,int ,int ) ;
 scalar_t__ make_material (TYPE_1__*) ;

Plan *
materialize_finished_plan(Plan *subplan)
{
 Plan *matplan;
 Path matpath;

 matplan = (Plan *) make_material(subplan);
 matplan->initPlan = subplan->initPlan;
 subplan->initPlan = NIL;


 cost_material(&matpath,
      subplan->startup_cost,
      subplan->total_cost,
      subplan->plan_rows,
      subplan->plan_width);
 matplan->startup_cost = matpath.startup_cost;
 matplan->total_cost = matpath.total_cost;
 matplan->plan_rows = subplan->plan_rows;
 matplan->plan_width = subplan->plan_width;
 matplan->parallel_aware = 0;
 matplan->parallel_safe = subplan->parallel_safe;

 return matplan;
}
