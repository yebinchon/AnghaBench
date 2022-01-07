
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int total_cost; int startup_cost; } ;
struct TYPE_8__ {int restrictlist; int param_source_rels; } ;
typedef scalar_t__ Relids ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_1__ JoinPathExtraData ;
typedef TYPE_2__ JoinCostWorkspace ;


 int NIL ;
 int add_path (int *,int *) ;
 scalar_t__ add_path_precheck (int *,int ,int ,int ,scalar_t__) ;
 int bms_free (scalar_t__) ;
 int bms_overlap (scalar_t__,int ) ;
 scalar_t__ calc_non_nestloop_required_outer (int *,int *) ;
 scalar_t__ create_hashjoin_path (int *,int *,int ,TYPE_2__*,TYPE_1__*,int *,int *,int,int ,scalar_t__,int *) ;
 int initial_cost_hashjoin (int *,TYPE_2__*,int ,int *,int *,int *,TYPE_1__*,int) ;

__attribute__((used)) static void
try_hashjoin_path(PlannerInfo *root,
      RelOptInfo *joinrel,
      Path *outer_path,
      Path *inner_path,
      List *hashclauses,
      JoinType jointype,
      JoinPathExtraData *extra)
{
 Relids required_outer;
 JoinCostWorkspace workspace;





 required_outer = calc_non_nestloop_required_outer(outer_path,
               inner_path);
 if (required_outer &&
  !bms_overlap(required_outer, extra->param_source_rels))
 {

  bms_free(required_outer);
  return;
 }





 initial_cost_hashjoin(root, &workspace, jointype, hashclauses,
        outer_path, inner_path, extra, 0);

 if (add_path_precheck(joinrel,
        workspace.startup_cost, workspace.total_cost,
        NIL, required_outer))
 {
  add_path(joinrel, (Path *)
     create_hashjoin_path(root,
           joinrel,
           jointype,
           &workspace,
           extra,
           outer_path,
           inner_path,
           0,
           extra->restrictlist,
           required_outer,
           hashclauses));
 }
 else
 {

  bms_free(required_outer);
 }
}
