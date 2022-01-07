
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int total_cost; int startup_cost; } ;
struct TYPE_22__ {int restrictlist; int param_source_rels; } ;
struct TYPE_21__ {int pathkeys; } ;
typedef scalar_t__ Relids ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_1__ Path ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_2__ JoinPathExtraData ;
typedef TYPE_3__ JoinCostWorkspace ;


 int * NIL ;
 int add_path (int *,TYPE_1__*) ;
 scalar_t__ add_path_precheck (int *,int ,int ,int *,scalar_t__) ;
 int bms_free (scalar_t__) ;
 int bms_overlap (scalar_t__,int ) ;
 scalar_t__ calc_non_nestloop_required_outer (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ create_mergejoin_path (int *,int *,int ,TYPE_3__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int ,int *,scalar_t__,int *,int *,int *) ;
 int initial_cost_mergejoin (int *,TYPE_3__*,int ,int *,TYPE_1__*,TYPE_1__*,int *,int *,TYPE_2__*) ;
 scalar_t__ pathkeys_contained_in (int *,int ) ;
 int try_partial_mergejoin_path (int *,int *,TYPE_1__*,TYPE_1__*,int *,int *,int *,int *,int ,TYPE_2__*) ;

__attribute__((used)) static void
try_mergejoin_path(PlannerInfo *root,
       RelOptInfo *joinrel,
       Path *outer_path,
       Path *inner_path,
       List *pathkeys,
       List *mergeclauses,
       List *outersortkeys,
       List *innersortkeys,
       JoinType jointype,
       JoinPathExtraData *extra,
       bool is_partial)
{
 Relids required_outer;
 JoinCostWorkspace workspace;

 if (is_partial)
 {
  try_partial_mergejoin_path(root,
           joinrel,
           outer_path,
           inner_path,
           pathkeys,
           mergeclauses,
           outersortkeys,
           innersortkeys,
           jointype,
           extra);
  return;
 }





 required_outer = calc_non_nestloop_required_outer(outer_path,
               inner_path);
 if (required_outer &&
  !bms_overlap(required_outer, extra->param_source_rels))
 {

  bms_free(required_outer);
  return;
 }





 if (outersortkeys &&
  pathkeys_contained_in(outersortkeys, outer_path->pathkeys))
  outersortkeys = NIL;
 if (innersortkeys &&
  pathkeys_contained_in(innersortkeys, inner_path->pathkeys))
  innersortkeys = NIL;




 initial_cost_mergejoin(root, &workspace, jointype, mergeclauses,
         outer_path, inner_path,
         outersortkeys, innersortkeys,
         extra);

 if (add_path_precheck(joinrel,
        workspace.startup_cost, workspace.total_cost,
        pathkeys, required_outer))
 {
  add_path(joinrel, (Path *)
     create_mergejoin_path(root,
            joinrel,
            jointype,
            &workspace,
            extra,
            outer_path,
            inner_path,
            extra->restrictlist,
            pathkeys,
            required_outer,
            mergeclauses,
            outersortkeys,
            innersortkeys));
 }
 else
 {

  bms_free(required_outer);
 }
}
